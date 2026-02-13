
#ifndef HASHMAP_H
#define HASHMAP_H

#include <iostream>
#include <iomanip>
#include <sstream>
#include <vector>

#include "hashmap_iterator.h"

/*
* HashMap 模板类
*
* K = 键类型
* M = 映射类型（值类型）
* H = 用于哈希键的哈希函数类型；如果未提供，默认为 std::hash<K>
*
* 注意：在处理 Stanford 库时，我们通常称 M 为值
* （并且 map 存储 键/值 对）。
*
* 但是，我们将它命名为 M（mapped type）以避免与 value_type 混淆。
* value_type 是容器存储的内容，即 std::pair<const K, M>。
*
* 所有 STL 容器都有 value_type，并且 STL 算法可能会使用 value_type 别名，所以
* 我们尽量遵循该约定。
*
* 示例：
*      HashMap<std::string, int>
*      这意味着 K = 键 = std::string，
*                 M = 映射值 = int，
*                 value_type = std::pair<const std::string, int>。
*
* 概念要求：
*      - H 是具有函数原型 size_t hash(const K& key) 的函数类型。
*           const 和引用不是必需的，但在函数中不能修改键。
*      - K 和 M 必须是正则的（可复制、默认可构造且可进行相等比较）。
*/
template<typename K, typename M, typename H = std::hash<M>>
class HashMap {
public:
    /*
    * std::pair<const K, M> 的别名，由 STL 使用（例如在 std::inserter 中）
    * 如上所述，value_type 与 mapped_type 不同！
    *
    * 用法：
    *      HashMap::value_type val = {3, "Avery"};
    *      map.insert(val);
    */
    using value_type = std::pair<const K, M>;

    /*
    * 迭代器类型的别名。回想一下，外部客户端不可能
    * 弄清楚这个迭代器的类型（你永远猜不到这里的模板
    * 参数是什么），这就是别名至关重要的原因。
    *
    * 用法：
    *      HashMap::iterator iter = map.begin();
    */
    using iterator = HashMapIterator<HashMap, false>;

    /*
    * const_iterator 类型的别名。回想一下，外部客户端不可能
    * 弄清楚这个迭代器的类型（你永远猜不到这里的模板
    * 参数是什么），这就是别名至关重要的原因。
    *
    * 用法：
    *      const auto& cmap = map;
    *      HashMap::iterator iter = cmap.begin();
    *
    * 注意：回想一下，你不能修改 const_iterator 指向的元素。
    * 此外，const_iterator 不是 const 迭代器（指针本身不是 const）！
    */
    using const_iterator = HashMapIterator<HashMap, true>;

    /*
    * 声明 HashMapIterator 类是 HashMap 类的友元。
    * 这允许 HashMapIterators 访问私有成员，这很重要，
    * 因为迭代器需要知道它指向的元素。
    */
    friend class HashMapIterator<HashMap, false>;
    friend class HashMapIterator<HashMap, true>;

    /*
    * 默认构造函数
    * 创建一个具有默认桶数和哈希函数的空 HashMap。
    *
    * 用法：
    *      HashMap map;
    *      HashMap map{};
    *
    * 复杂度：O(B)，B = 桶数
    */
    HashMap();

    /*
    * 带有 bucket_count 和哈希函数作为参数的构造函数。
    *
    * 创建一个具有指定初始 bucket_count 和哈希函数的空 HashMap。
    * 如果未提供哈希函数，则使用 H 的默认值。
    *
    * 用法：
    *      HashMap map(10);
    *      HashMap map(10, [](const K& key) {return key % 10; });
    *      HashMap map{10, [](const K& key) {return key % 10; }};
    *
    * 复杂度：O(B)，B = 桶数
    *
    * 注意：什么是 explicit？ Explicit 指定构造函数
    * 不能对参数执行隐式转换，或使用复制初始化。
    * 这很好，因为像下面这样的无意义代码将无法编译：
    *
    * HashMap<int, int> map(1.0);  // double -> int 转换不被允许。
    * HashMap<int, int> map = 1;   // 复制初始化，无法编译。
    */
    explicit HashMap(size_t bucket_count, const H& hash = H());

    /*
    * 析构函数。
    *
    * 用法：（当 HashMap 超出作用域时隐式调用）
    *
    * 复杂度：O(N)，N = 元素数量
    */
    ~HashMap();

    /*
    * 返回 map 中 (K, M) 对的数量。
    *
    * 我们将此函数声明为 inline，因为它很短，
    * 编译器可以通过直接内联替换进行优化。
    *
    * 参数：无
    * 返回值：size_t
    *
    * 用法：
    *      if (map.size() < 3) { ... }
    *
    * 复杂度：O(1)（因函数简短而内联）
    */
    inline size_t size();

    /*
    * 返回 HashMap 是否为空。
    *
    * 参数：无
    * 返回值：bool
    *
    * 用法：
    *      if (map.empty()) { ... }
    *
    * 复杂度：O(1)（因函数简短而内联）
    */
    inline bool empty();

    /*
    * 返回 load_factor，定义为 size/bucket_count。
    *
    * 参数：无
    * 返回值：float
    *
    * 用法：
    *      float load_factor = map.load_factor();
    *
    * 复杂度：O(1)（因函数简短而内联）
    *
    * 注意：我们的最小实现不会在负载因子过高时
    * 自动重新哈希。如果你想作为扩展，可以实现自动重新哈希。
    */
    inline float load_factor();

    /*
    * 返回桶的数量。
    *
    * 参数：无
    * 返回值：size_t - 桶的数量
    *
    * 用法：
    *      size_t buckets = map.bucket_count();
    *
    * 复杂度：O(1)（因函数简短而内联）
    *
    * 注意：我们的最小实现不会在负载因子过高时
    * 自动重新哈希。如果你愿意，可以实现自动重新哈希。
    *
    * 什么是 noexcept？ 它保证此函数不会抛出
    * 异常，允许编译器进一步优化此函数。
    * 抛出异常的 noexcept 函数将自动
    * 终止程序。
    */
    inline size_t bucket_count();

    /*
    * 返回 HashMap 是否包含给定的键。
    *
    * 参数：类型 K 的 const 左值引用，给定的键
    * 返回值：bool
    *
    * 用法：
    *      if (map.contains("Avery")) { map.at("Avery"); ... }
    *
    * 复杂度：O(1) 摊销平均情况，O(N) 最坏情况，N = 元素数量
    *
    * 注意：回想一下，在使用 std::map 时，你会使用 map.count(key) 函数
    * （返回 0 或 1）来检查键是否存在。在 C++20 中，map.contains(key) 将可用。
    * 由于 contains 对于使用过 Stanford 库的学生来说感觉更自然
    * 并且将来会可用，我们将实现 map.contains(key)。
    */
    bool contains(const K& key);

    /*
    * 返回给定键的映射值的左值引用。
    * 如果不存在这样的元素，则抛出 std::out_of_range 类型的异常。
    *
    * 参数：类型 K 的键。
    * 返回值：类型 M 的左值引用，即键的映射值。
    *
    * 用法：
    *      map.at(3) = "Avery";            // 假设 {3, "Avery"} 在 map 中。
    *      std::string s = map.at(3);      // s = "Avery"
    *
    * 异常：如果键不在 map 中，则抛出 std::out_of_range。
    *
    * 复杂度：O(1) 摊销平均情况，O(N) 最坏情况，N = 元素数量
    *
    * 注意：回想一下，你将实现的 operator[]，如果找不到键，
    * 不会抛出异常。相反，它将为该键创建一个具有默认映射值的 K/M 对。
    * 此函数也不是常量正确的（const-correct），你将在里程碑 2 中修复它。
    */
    M& at(const K& key);

    /*
    * 删除 HashMap 中的所有 K/M 对。
    *
    * 参数：无
    * 返回值：无
    *
    * 用法：
    *      map.clear();
    *
    * 复杂度：O(N)，N = 元素数量
    *
    * 注意：clear 删除 HashMap 中的所有元素并释放与这些元素关联的内存，
    * 但 HashMap 仍应处于有效状态，并准备再次插入，
    * 就像它是没有元素的新构造的 HashMap 一样。
    * 桶的数量应保持不变。
    */
    void clear();

    /*
    * 如果键不存在，则将 K/M 对插入 HashMap。
    * 如果键存在，则操作为空操作（no-op）。
    *
    * 参数：对 value_type（K/M 对）的 const 左值引用
    * 返回值：
    *          pair<iterator, bool>，其中：
    *              iterator - 指向具有给定键的 value_type 元素的迭代器
    *                         此元素可能是刚添加的，也可能是已存在的。
    *              bool - 如果成功添加了元素，则为 true，
    *                      如果元素已存在，则为 false。
    *
    * 用法：
    *      HashMap<int, std::string> map;
    *      auto [iter1, insert1] = map.insert({3, "Avery"}); // 插入 {3, "Avery"}，iter1 指向该元素，insert1 = true
    *      auto [iter2, insert2] = map.insert({3, "Anna"});  // 无操作，iter2 指向 {3, "Avery"}，insert2 = false
    *
    * 复杂度：O(1) 摊销平均情况
    */
    std::pair<iterator, bool> insert(const value_type& val);

    /*
    * 从 HashMap 中擦除与给定键对应的 K/M 对（如果存在）。
    * 如果键不存在，这是一个无操作（no-op）。
    *
    * 参数：对 K 的 const 左值引用，要删除的键。
    * 返回值：如果找到并删除了 K/M 对，则为 true；如果未找到键，则为 false。
    *
    * 用法：
    *      map.erase(3);           // 假设 K = int，擦除键为 3 的元素，返回 true
    *
    * 复杂度：O(1) 摊销平均情况，O(N) 最坏情况，N = 元素数量
    *
    * 注意：调用 erase 应保持现有迭代器的顺序，
    * 除了指向被擦除的 K/M 元素的迭代器。
    */
    bool erase(const K& key);

    /*
    * 擦除 pos 指向的 K/M 对。
    * 如果 pos 不是有效且可解引用的迭代器，则行为是未定义的。
    *
    * 参数：const_iterator pos，指向要删除元素的迭代器
    * 返回值：紧跟在 pos 之后的迭代器，可能为 end()。
    *
    * 用法：
    *       auto iter = map.find(3);
    *       auto next = map.erase(iter);    // 擦除 iter 指向的元素
    *
    * 复杂度：O(1) 摊销平均情况，O(N) 最坏情况，N = 元素数量
    *
    * 注意：调用 erase 应保持现有迭代器的顺序，
    * 除了指向被擦除的 K/M 元素的迭代器。
    */
    iterator erase(const_iterator pos);

    /*
    * 调整桶数组的大小，并重新哈希所有元素。new_buckets 可以
    * 大于、小于或等于原始桶的数量。
    *
    * 参数：new_buckets - 新的桶数。必须大于 0。
    * 返回值：无
    *
    * 用法：
    *      map.rehash(30)
    *
    * 异常：如果 new_buckets = 0，抛出 std::out_of_range。
    *
    * 复杂度：O(N) 摊销平均情况，O(N^2) 最坏情况，N = 元素数量
    *
    * 注意：我们的最小 HashMap 实现不支持自动重新哈希，但
    * std::unordered_map 会自动重新哈希，即使你将哈希到
    * 一个非常小的桶数。因此，std::unordered_map.rehash(0)
    * 是允许的，并强制无条件重新哈希。我们需要不要求此行为。
    * 如果你愿意，你可以实现它。
    *
    * 以前，这个函数是作业的一部分。但是，这是一个相当具有挑战性的
    * 链表问题，学生很难找到优雅的解决方案。
    * 相反，我们将针对此函数提出简短的问答题。
    */
    void rehash(size_t new_bucket);

    /*
    * 返回指向第一个元素的迭代器。
    * 此重载在 HashMap 为非 const 时使用。
    *
    * 用法：
    *      auto iter = map.begin();
    */
    iterator begin();

    /*
    * 返回指向第一个元素的 const_iterator。
    * 此重载在 HashMap 为 const 时使用。
    *
    * 用法：
    *      auto iter = cmap.begin();
    */
    const_iterator begin() const;

    /*
    * 返回指向最后一个元素之后的迭代器。
    * 此重载在 HashMap 为非 const 时使用。
    *
    * 用法：
    *      while (iter != map.end()) {...}
    */
    iterator end();

    /*
    * 查找具有给定键的元素，并返回指向该元素的迭代器。
    * 如果未找到元素，则返回指向 end() 的迭代器。
    *
    * 参数：类型 K 的 const 左值引用，我们要查找的键。
    * 返回值：指向具有给定键的 K/M 元素的迭代器。
    *
    * 用法：
    *      auto iter = map.find(4);
    *      iter->second = "Hello"; // 将 4 映射到的任何内容设置为 "Hello"。
    *
    * 复杂度：O(1) 摊销平均情况，O(N) 最坏情况，N = 元素数量
    */
    iterator find(const K& key);

    /*
    * 将哈希表的内容作为链表打印到 std::cout 的函数，
    * 并显示大小、桶数和负载因子。
    *
    * 参数：无
    * 返回值：无
    *
    * 用法：
    *      map.debug();
    *
    * 复杂度：O(N)，N = 元素数量。
    *
    * 注意：如果 K 或 V 不支持 std::ostream 的 operator<<，debug 将无法编译。
    * 如果你的链表逻辑不正确（例如忘记重置最后一个节点的 next 为 nullptr）。
    * 在向我们要抱怨我们的启动代码不起作用之前，
    * 请检查编译器错误的来源来自哪里！
    *
    * 提示：将 map.debug() 放置在测试用例的各个位置，以找出哪个操作
    * 失败。当我们调试代码时非常有用。
    */
    void debug();

    /* 额外的构造函数 */

    /*
    * 范围构造函数
    * 创建一个包含范围 [first, last) 内元素的 HashMap。
    *
    * 要求：InputIt 必须是指向元素为 pair<K, M> 的容器的迭代器。
    *
    * 用法：
    *      std::vector<std::pair<char, int>> vec {{'a', 3}, {'b', 5}, {'c', 7}};
    *      HashMap<char, int> map{vec.begin(), vec.end()};
    *
    * 复杂度：O(N)，其中 N = std::distance(first, last);
    */
    template<typename InputIter>
    HashMap(InputIter begin, InputIter end, size_t bucket_count = kDefaultBuckets, const H& hash = H());

    /*
    * 初始化列表构造函数
    * 创建一个包含初始化列表 init 中元素的 HashMap
    *
    * 要求：init 必须是一个 initializer_list，其元素为 pair<K, M>。
    *
    * 用法：
    *      HashMap<char, int> map{{'a', 3}, {'b', 5}, {'c', 7}};
    *
    * 复杂度：O(N)，其中 N = init.size();
    *
    * 注意：你可能想对 initializer_lists 做一些研究。你需要知道的最重要的细节是
    * 它们非常有限，只有三个函数：init.begin()、init.end() 和 init.size()。
    * 没有其他方法可以访问 initializer_list 中的元素。
    * 因此，你可能希望利用你在前一个函数中编写的范围构造函数！
    *
    * 另外，你应该查看 .cpp 文件中的委托构造函数说明。
    */
    HashMap(std::initializer_list<value_type> init, size_t bucket_count = kDefaultBuckets, const H& hash = H());

    /*
    * 下标运算符
    * 检索对应于此键的映射值的引用。
    * 如果不存在这样的键，则将一个 键/映射值 对添加到 HashMap 中。
    * 映射值将具有类型 M 的默认值。
    *
    * 用法：
    *      HashMap<int, std::string> map;
    *      map[3] = "Avery"; // 创建对 {3, "Avery"}
    *      auto name = map[3]; // name 现在是 "Avery"
    *      auto name2 = map[4]; // 创建对 {4, ""}，name2 现在是 ""
    *
    * 复杂度：O(1) 平均情况摊销加上 K 和 M 的构造函数的复杂度
    */
    M& operator[](const K& key);


    // TODO: 声明复制构造函数/赋值，移动构造函数/赋值的头文件

    HashMap(const HashMap& other);

    HashMap(Hashmap&& other);

    HashMap& operator=(const HashMap& other);

    HashMap& operator=(HashMap&& other);



private:
    /*
    * node 结构体表示链表中的一个节点。
    * 每个节点由一个 value_type（K/M 对）和一个 next 指针组成。
    *
    * 这在私有部分实现，因为客户端不应处理与节点结构相关的任何内容。
    *
    * 用法;
    *      HashMap<K, M, H>::node n;
    *      n->value = {3, 4};
    *      n->next = nullptr;
    */
    struct Node
    {
        value_type value;
        Node* next;
       /*
        * 默认构造函数，所以即使你忘记将 next 设置为 nullptr 也没关系。
        *
        */
        Node() : value(value_type()), next(nullptr) {}; 
    };

    /*
    * node* 对的类型别名。
    *
    * 这在 find_node 中使用。
    *
    * 用法：
    *      auto& [prev, curr] = node_pair{nullptr, new node()};
    */
    using node_pair = std::pair<Node *, Node *>;

    /*
    * 查找具有给定键的节点 N，并返回一个 node_pair，由
    * next 是 N 的节点和 N 组成。如果未找到节点，则返回 {nullptr, nullptr}。
    * 如果找到的节点是列表中的第一个，则返回 {nullptr, node}。
    *
    * 示例给定列表：front -> [A] -> [B] -> [C] -> /
    * 其中 A, B, C, D 是指针，那么
    *
    * find_node(A_key) = {nullptr, A}
    * find_node(B_key) = {A, B}
    * find_node(C_key) = {B, C}
    * find_node(D_key) = {nullptr, nullptr}
    *
    * 用法：
    *      auto& [prev, curr] = find_node(3);
    *      if (prev == nullptr) { ... }
    *
    * 复杂度：O(1) 摊销平均情况，O(N) 最坏情况，N = 元素数量
    *
    * 注意：此函数是必需的，因为在擦除时，我们需要更改
    * 我们正在擦除的节点之前的节点的 next 指针。
    *
    * 提示：在作业中，你应该不需要调用此函数。
    */
    node_pair find_node(const K& key) const;

    /*
    * 查找 _buckets_array 中第一个非空的桶。
    *
    * 提示：在作业中，你应该不需要调用此函数。
    */
    size_t first_not_empty_bucket() const;

    /*
    * 创建一个指向 element curr->value 的迭代器。
    *
    * 提示：在作业中，你应该不需要调用此函数。
    */
    iterator make_iterator(Node* curr);

    /* 私有成员变量 */

    /*
    * 实例变量：_size，元素的数量，即 K/M 对。
    * 不要将其与桶的数量混淆！
    */
    size_t _size;

    /*
    * 实例变量：_hash_function，一个函数 (K -> size_t)，用于
    * 对 K 进行哈希以确定它们应该插入/找到哪个桶。
    *
    * 记得将 _hash_function 的输出对 _bucket_count 取模！
    *
    * 用法：
    *      K element = // something;
    *      size_t index = _hash_function(element) % _bucket_count;
    *
    */
    H _hash_function;

    /*
    * 桶的数组（向量）。每个桶都是一个链表，
    * 存储在桶中的项是该链表的头指针。
    *
    * 用法：
    *      node* ptr = _buckets_array[index];          // _buckets_array 是 node* 的数组
    *      const auto& [key, mapped] = ptr->value;     // 每个 node* 包含一个值为 pair
    */
    std::vector<Node *> _buckets_array;

    /*
    * 默认构造函数的默认桶数常量。
    */
    static const size_t kDefaultBuckets = 10;

    /*
     * 迭代器类使用的私有类型别名，以便它可以遍历
     * 桶。
     */
    using bucket_array_type = decltype(_buckets_array);
};

#include "hashmap.cpp"
#endif