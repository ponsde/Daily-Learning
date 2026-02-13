
#ifndef HASHMAP_ITERATOR_H
#define HASHMAP_ITERATOR_H

#include <iterator>     // for std::forward_iterator_tag
#include <functional>   // for std::conditional_t

// forward declaration for the HashMap class
template <typename K, typename M, typename H> class HashMap;

/*
* HashMapIterator 模板类
*
* Map = 此类作为其迭代器的 HashMap 类型。
* IsConst = 这是否是一个 const_iterator 类。
*
* 概念要求：
* - Map 必须是有效的 HashMap<K, M, H> 类
*/
template <typename Map, bool IsConst = true>
class HashMapIterator {
public:

    /*
    * 这个别名非常重要。处理 const_iterator 时，value_type 始终为 const，
    * 这可以防止客户端通过 const_iterator 修改元素。如果是 IsConst 为 true，
    * 元函数 std::conditional_t 会（在编译时）将 value_type 更改为 const。
    */
    using value_type = std::conditional_t<IsConst, const typename Map::value_type, typename Map::value_type>;

    /*
    * 此迭代器类的公共别名。很重要，这样像 std::iterator_traits 这样的 STL 函数
    * 可以解析此类以获取重要信息，例如其迭代器类别。
    */
    using iterator_category =   std::forward_iterator_tag;
    using difference_type   =   std::ptrdiff_t;
    using pointer           =   value_type*;
    using reference         =   value_type&;

    /*
    * 友元声明，以便此迭代器所属的 HashMap 类可以访问其迭代器的属性。
    * 此外，为了使 iterator 和 const_iterator 之间的转换容易，我们将相应的
    * iterator 和 const_iterator 声明为友元。
    */
    friend Map;
    friend HashMapIterator<Map, true>;
    friend HashMapIterator<Map, false>;

    /*
    * 转换运算符：将任何迭代器（iterator 或 const_iterator）转换为 const_iterator。
    *
    * 用法：
    *      iterator iter = map.begin();
    *      const_iterator c_iter = iter;    // 隐式转换
    *
    * 隐式转换运算符通常不受欢迎，因为它们可能导致
    * 一些意外的行为。这是转换运算符
    * 非常方便的一个罕见情况。HashMap 类中的许多迭代器函数
    * 都在秘密地使用此转换。
    *
    * 注意：反向转换（const 到 non-const）是不安全的
    * 因为这让客户端获得了写访问权限，而 map 本身是 const 的。
    */
    operator HashMapIterator<Map, true>() const {
        return HashMapIterator<Map, true>(_buckets_array, _node, _bucket_idx);
    }

    /*
    * 解引用运算符：定义解引用迭代器的行为。
    *
    * 用法：
    *      auto [key, value] = *iter;
    *      auto value = iter->second;
    *      iter->second = 3; // 如果 iter 是常规迭代器（不是 const_iterator）
    *
    * 注意，解引用无效或 end() 迭代器是未定义行为。
    */
    reference operator*();
    pointer operator->();

    /*
    * 递增运算符：移动迭代器指向下一个元素，或 end()。
    *
    * 用法：
    *      ++iter;         // 前缀
    *      iter++;         // 后缀
    *
    * 注意：前缀运算符首先递增，然后返回对自身的引用（已递增）。
    * 后缀运算符返回原始迭代器的副本，而迭代器本身已递增。
    *
    * 注意，递增无效或 end() 迭代器是未定义行为。
    */
    HashMapIterator<Map, IsConst>& operator++();
    HashMapIterator<Map, IsConst> operator++(int);

    /*
    * 相等运算符：判断两个迭代器是否指向同一个元素。
    *
    * 用法：
    *      if (iter == map.end()) {...};
    */
    template <typename Map_, bool IsConst_>
    friend bool operator==(const HashMapIterator<Map_, IsConst_>& lhs, const HashMapIterator<Map_, IsConst_>& rhs);

    /*
     * 不等运算符：判断两个迭代器是否指向不同的元素。
     *
     * 用法：
     *      if (iter != map.end()) {...};
     */
    template <typename Map_, bool IsConst_>
    friend bool operator!=(const HashMapIterator<Map_, IsConst_>& lhs, const HashMapIterator<Map_, IsConst_>& rhs);

    /*
     * 特殊成员函数：我们要明确声明我们需要默认的编译器生成的函数。
     * 这里我们遵循零之法则（Rule of Zero）。你应该思考为什么这是正确的。
     */
    HashMapIterator(const HashMapIterator<Map, IsConst>& rhs) = default;
    HashMapIterator<Map, IsConst>& operator=(const HashMapIterator<Map, IsConst>& rhs) = default;

    HashMapIterator(HashMapIterator<Map, IsConst>&& rhs) = default;
    HashMapIterator<Map, IsConst>& operator=(HashMapIterator<Map, IsConst>&& rhs) = default;

private:
    using Node = typename Map::Node;
    using bucket_array_type = typename Map::bucket_array_type;

    /*
    * 实例变量：指向此迭代器所属 HashMap 的 _buckets_array 的指针。
    */
    bucket_array_type* _buckets_array;

    /*
    * 实例变量：指向存储此迭代器当前指向元素的节点的指针。
    */
    Node* _node;

    /*
    * 实例变量：_node 所在桶的索引。
    */
    size_t _bucket_idx;

    /*
    * HashMapIterator 的私有构造函数。
    * 友元类可以访问其友元类的私有成员，
    * 所以 HashMap 能够调用 HashMapIterator 的私有构造函数
    * （例如，在 begin() 中）。我们希望 HashMapIterator 构造函数为私有
    * 这样客户端就不能在没有请求的情况下随机构造 HashMapIterator
    * 通过 HashMap 的接口。
    */
    HashMapIterator(bucket_array_type* buckets_array, Node* node, size_t bucket_idx);
};

template<typename Map, bool IsConst>
HashMapIterator<Map, IsConst>::HashMapIterator(bucket_array_type* buckets_array, Node* node, size_t bucket_idx):
    _buckets_array(buckets_array),
    _node(node),
    _bucket_idx(bucket_idx) {};
#endif