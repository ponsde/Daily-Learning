/*
* Assignment 2: HashMap template implementation (BASIC SOLUTION)
*      Notes: this file is what we call a .tpp file. It's not a .cpp file,
*      because it's not exactly a regular source code file. Instead, we are
*      defining the template definitions for our HashMap class.
*
*      TODO: write a comment here.
*
*      You'll notice that the commenting provided is absolutely stunning.
*      It was really fun to read through the starter code, right?
*      Please emulate this commenting style in your code, so your grader
*      can have an equally pleasant time reading your code. :)
*/

#include "hashmap.h"


template <typename K, typename M, typename H>
HashMap<K, M, H>::HashMap() : HashMap(kDefaultBuckets) { }

template <typename K, typename M, typename H>
HashMap<K, M, H>::HashMap(size_t bucket_count, const H& hash) :
   _size(0),
   _hash_function(hash),
   _buckets_array(bucket_count, nullptr) { }

template <typename K, typename M, typename H>
HashMap<K, M, H>::~HashMap() {
   clear();
}

template <typename K, typename M, typename H>
inline size_t HashMap<K, M, H>::size() const noexcept {
   return _size;
}

template <typename K, typename M, typename H>
inline bool HashMap<K, M, H>::empty() const noexcept {
   return size() == 0;
}

template <typename K, typename M, typename H>
inline float HashMap<K, M, H>::load_factor() const noexcept {
   return static_cast<float>(size())/bucket_count();
};

template <typename K, typename M, typename H>
inline size_t HashMap<K, M, H>::bucket_count() const noexcept {
   return _buckets_array.size();
};

template <typename K, typename M, typename H>
bool HashMap<K, M, H>::contains(const K& key) const noexcept {
   return find_node(key).second != nullptr;
}

template <typename K, typename M, typename H>
void HashMap<K, M, H>::clear() noexcept {
   for (auto& curr : _buckets_array) {
       while (curr != nullptr) {
           auto trash = curr;
           curr = curr->next;
           delete trash;
       }
   }
   _size = 0;
}

template <typename K, typename M, typename H>
std::pair<typename HashMap<K, M, H>::value_type*, bool>
           HashMap<K, M, H>::insert(const value_type& value) {
   const auto& [key, mapped] = value;
   auto [prev, node_to_edit] = find_node(key);
   size_t index = _hash_function(key) % bucket_count();

   if (node_to_edit != nullptr) return {&(node_to_edit->value), false};
   _buckets_array[index] = new node(value, _buckets_array[index]);

   ++_size;
   return {&(_buckets_array[index]->value), true};
}

template <typename K, typename M, typename H>
M& HashMap<K, M, H>::at(const K& key) {
   auto [prev, node_found] = find_node(key);
   if (node_found == nullptr) {
       throw std::out_of_range("HashMap<K, M, H>::at: key not found");
   }
   return node_found->value.second;
}

template <typename K, typename M, typename H>
typename HashMap<K, M, H>::node_pair HashMap<K, M, H>::find_node(const K& key) const {
   size_t index = _hash_function(key) % bucket_count();
   auto curr = _buckets_array[index];
   node* prev = nullptr; // if first node is the key, return {nullptr, front}
   while (curr != nullptr) {
       const auto& [found_key, found_mapped] = curr->value;
       if (found_key == key) return {prev, curr};
       prev = curr;
       curr = curr->next;
   }
   return {nullptr, nullptr}; // key not found at all.
}

template <typename K, typename M, typename H>
void HashMap<K, M, H>::debug() const {
   std::cout << std::setw(30) << std::setfill('-') << '\n' << std::setfill(' ')
             << "Printing debug information for your HashMap implementation\n"
             << "Size: " << size() << std::setw(15) << std::right
             << "Buckets: " << bucket_count() << std::setw(20) << std::right
             << "(load factor: " << std::setprecision(2) << load_factor() << ") \n\n";

   for (size_t i = 0; i < bucket_count(); ++i) {
       std::cout << "[" << std::setw(3) << i << "]:";
       auto curr = _buckets_array[i];
       while (curr != nullptr) {
           const auto& [key, mapped] = curr->value;
           // next line will not compile if << not supported for K or M
           std::cout <<  " -> " << key << ":" << mapped;
           curr = curr->next;
       }
       std::cout <<  " /" <<  '\n';
   }
   std::cout << std::setw(30) << std::setfill('-') << '\n';
}

template <typename K, typename M, typename H>
bool HashMap<K, M, H>::erase(const K& key) {
    auto [prev, node_to_erase] = find_node(key);
    if (node_to_erase == nullptr) {
        return false;
    } else {
        size_t index = _hash_function(key) % bucket_count();
        (prev ? prev->next : _buckets_array[index]) = node_to_erase->next;
        delete node_to_erase;
        --_size;
        return true;
    }
}

template <typename K, typename M, typename H>
void HashMap<K, M, H>::rehash(size_t new_bucket_count) {
    if (new_bucket_count == 0) {
        throw std::out_of_range("HashMap<K, M, H>::rehash: new_bucket_count must be positive.");
    }

    std::vector<node*> new_buckets_array(new_bucket_count);
    /* Optional Milestone 1: begin student code */

        // Hint: you should NOT call insert, and you should not call
        // new or delete in this function. You must reuse existing nodes.

    for (auto& head : _buckets_array)
    {
        node* cur = head;
        while (cur)
        {
            node* next = cur->next;
            size_t idx = _hash_function(cur->value.first) % new_bucket_count;
            cur->next = new_buckets_array[idx];
            new_buckets_array[idx] = cur;
            cur = next;
        }
    }
    _buckets_array = std::move(new_buckets_array);


    /* end student code */
}

/*
    Milestone 2-3: begin student code

    Here is a list of functions you should implement:
    Milestone 2
        - operator[]
        - operator<<
        - operator== and !=
        - make existing functions const-correct

    Milestone 3
        - copy constructor
        - copy assignment
        - move constructor
        - move assignment
*/

template<typename K, typename M, typename H>
M& HashMap<K, M, H>::operator[](const K& key)
{
    size_t idx = _hash_function(key) % bucket_count();

    node* cur = _buckets_array[idx];
    while (cur)
    {
        if (cur->value.first == key)
        {
            return cur->value.second;
        }
        cur = cur->next;
    }

    return insert({key, {}}).first->second;
}

template <typename K, typename M, typename H>
std::ostream& operator<<(std::ostream& os, const HashMap<K, M, H>& map)
{
    os << '{';
    bool first = true;
    for (auto& head : map._buckets_array)
    {
        auto* cur = head;
        while (cur)
        {
            if (first)
            {
                first = false;
            }
            else
            {
                os << ", ";
            }
            os << cur->value.first << ':' << cur->value.second;
            cur = cur->next;
        }
    }
    os << '}';
    return os;
}

template<typename K, typename M, typename H>
bool operator==(const HashMap<K, M, H>& lhs, const HashMap<K, M, H>& rhs)
{
    if (lhs._size != rhs._size)
    {
        return false;
    }
    for (auto& head : lhs._buckets_array)
    {
        auto* cur = head;
        while (cur)
        {
            auto [prev, node] = rhs.find_node(cur->value.first);
            if (node == nullptr || node->value.second != cur->value.second)
            {
                return false;
            }
            cur = cur->next;

        }
    }
    return true;
}

template <typename K, typename M, typename H>
bool operator!=(const HashMap<K, M, H>& lhs, const HashMap<K, M, H>& rhs)
{
    return !(lhs == rhs);
}

template<typename K, typename M, typename H>
const M& HashMap<K, M, H>::at(const K& key) const
{
    auto [prev, node_found] = find_node(key);
    if (node_found == nullptr)
    {
        throw std::out_of_range("HashMap<K, M, H>::at: key not found");
    }
    return node_found->value.second;
}


template<typename K, typename M, typename H>
HashMap<K, M, H>::HashMap(const HashMap<K, M, H>& other)
    : _size(0),
      _hash_function(other._hash_function),
      _buckets_array(other.bucket_count(), nullptr)
{
    for (auto& head : other._buckets_array)
    {
        auto cur = head;
        while (cur)
        {
            insert(cur->value);
            cur = cur->next;
        }

    }
}

template<typename K, typename M, typename H>
HashMap<K, M, H>::HashMap(HashMap<K, M, H>&& other) noexcept
    : _size(other._size),
      _buckets_array(std::move(other._buckets_array)),
      _hash_function(std::move(other._hash_function))
{
    other._buckets_array.clear();

}

template<typename K, typename M, typename H>
HashMap<K, M, H>& HashMap<K, M, H>::operator=(const HashMap& other)
{
    if (this == &other)
    {
        return *this;
    }
    clear();
    _size = 0;
    _hash_function = other._hash_function;
    _buckets_array.assign(other.bucket_count(), nullptr);
    for (auto& head : other._buckets_array)
    {
        auto cur = head;
        while (cur)
        {
            insert(cur->value);
            cur = cur->next;
        }

    }
    return *this;
}

template<typename K, typename M, typename H>
HashMap<K, M, H>& HashMap<K, M, H>::operator=(HashMap&& other) noexcept
{
    if (this == &other)
    {
        return *this;
    }

    clear();

    _size = std::move(other._size);
    _buckets_array = std::move(other._buckets_array);
    _hash_function = std::move(other._hash_function);

    other._buckets_array.clear();

    return *this;
}


template<typename K, typename M, typename H>
HashMap<K, M, H>::HashMap(std::initializer_list<value_type> init, size_t bucket_cnt, const H& hash)
    : HashMap(init.begin(), init.end(), bucket_cnt, hash)
{}

template<typename K, typename M, typename H>
typename HashMap<K, M, H>::iterator HashMap<K, M, H>::begin()
{
    return HashMapIterator<HashMap<K, M, H>, false>(this, 0);
}

template<typename K, typename M, typename H>
typename HashMap<K, M, H>::const_iterator HashMap<K, M, H>::begin() const
{
    return HashMapIterator<HashMap<K, M, H>, true>(this, 0);
}

template<typename K, typename M, typename H>
typename HashMap<K, M, H>::iterator HashMap<K, M, H>::end()
{
    return HashMapIterator<HashMap<K, M, H>, false>(this, 1);
}

template<typename K, typename M, typename H>
typename HashMap<K, M, H>::const_iterator HashMap<K, M, H>::end() const
{
    return HashMapIterator<HashMap<K, M, H>, true>(this, 1);
}

template<typename K, typename M, typename H>
template<typename ForwardIt>
HashMap<K, M, H>::HashMap(ForwardIt first, ForwardIt last, size_t bucket_cnt, const H& hash)
    : _buckets_array(bucket_cnt, nullptr),
    _hash_function(hash),
    _size(0)
{
    for (auto x = first; x != last; ++x)
    {
        insert(*x);
    }
}

