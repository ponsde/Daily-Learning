#include "hashmap.h"

template<typename K, typename M, typename H>
HashMap<K, M, H>::HashMap() : _size(0), _hash_function(H()), _buckets_array(kDefaultBuckets, nullptr) {};

template<typename K, typename M, typename H>
HashMap<K, M, H>::HashMap(size_t bucket_count, const H& hash):
    _size(0), 
    _hash_function(hash), 
    _buckets_array(bucket_count, nullptr) {};

template<typename K, typename M, typename H>
HashMap<K, M, H>::~HashMap() {
    for (auto& head : _buckets_array)
    {
        Node* cur = head;
        while (cur)
        {
            Node* next = cur->next;
            delete cur;
            cur = next;
        }
        head = nullptr;
    }

}

template<typename K, typename M, typename H>
inline size_t HashMap<K, M, H>::size(){
    return _size;
}

template<typename K, typename M, typename H>
inline bool HashMap<K, M, H>::empty(){
    return _size == 0;
}

template<typename K, typename M, typename H>
inline float HashMap<K, M, H>::load_factor()
{
    return static_cast<float>(_size) / bucket_count();
}

template<typename K, typename M, typename H>
inline size_t HashMap<K, M, H>::bucket_count()
{
    return _buckets_array.size();
}

template<typename K, typename M, typename H>
inline size_t HashMap<K, M, H>::bucket_count() {
    return _buckets_array.size();
}

template<typename K, typename M, typename H>
bool HashMap<K, M, H>::contains(const K& key) {
    // TODO: contains 的实现应该被修改
    size_t idx = _hash_function(key) % bucket_count();
    auto cur = _buckets_array[idx];
    while (cur)
    {
        if (cur->value.first == key)
        {
            return true;
        }
        cur = cur->next;
    }

    return false;
}

template<typename K, typename M, typename H>
M& HashMap<K, M, H>::at(const K& key) {
    // TODO: at 的实现应该被修改
    size_t idx = _hash_function(key) % bucket_count();
    Node* cur = _buckets_array[idx];

    while (cur)
    {
        if (cur->value.first == key)
        {
            return cur->value.second;
        }
        cur = cur->next;
    }

    throw std::out_of_range("Not Find");
}

template<typename K, typename M, typename H>
void HashMap<K, M, H>::clear()
{
    _size = 0;
    for (auto& node : _buckets_array)
    {
        Node* cur = node;
        while (cur)A
        {
            Node* next = cur->next;
            delete cur;
            cur = next;
        }
    }

}

template<typename K, typename M, typename H>
std::pair<typename HashMap<K, M, H>::iterator, bool> 
HashMap<K, M, H>::insert(const typename HashMap<K, M, H>::value_type& val)
{
    size_t idx = _hash_function(key) % bucket_count();

    Node* node = _buckets_array[idx];

    Node* cur = node;
    while (cur)
    {
        if (cur->value == val)
        {
            return {cur, false};
        }
    }

    Node* new_node = new Node();
    new_node->value = val;
    new_node->next = node;

    _buckets_array[idx] = new_node;
    return {new_node, new_node};
}

template<typename K, typename M, typename H>
bool HashMap<K, M, H>::erase(const K& key)
{
    size_t idx = _hash_function(key) % bucket_count();

    Node* cur = _buckets_array[idx];
    Node* pre = nullptr;
    while (cur)
    {
        if (cur->value.fisrt == key)
        {
            Node* next = cur->next;
            pre->next = next;
            delete cur;
            cur = next;
        }
        else
        {
            pre = cur;
            cur = cur->next;
        }
        
    }
}

template<typename K, typename M, typename H>
typename HashMap<K, M, H>::iterator 
HashMap<K, M, H>::erase(typename HashMap<K, M, H>::const_iterator pos)
{

    Node* des = pos._node;
    Node* cur = *pos._buckets_array[idx];

    Node* pre = nullptr;
    while (cur)
    {
        if (cur == des)
        {
            Node* next = cur->next;
            delete cur;
            pre->next = next;
            cur = next;

            return HashMapIterator<typename HashMap<K, M, H>, false>(&pos._buckets_array, cur, pos._bucket_idx);
        }
        pre = cur;
        cur = cur->next;
    }
    return HashMapIterator<typename HashMap<K, M, H>, false>(&pos._buckets_array, cur, pos._bucket_idx);
}