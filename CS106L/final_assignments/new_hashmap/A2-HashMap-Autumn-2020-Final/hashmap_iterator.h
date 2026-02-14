#ifndef HASHMAPITERATOR_H
#define HASHMAPITERATOR_H
/* Milestone 6 (optional): implement iterators for your HashMap class */

#include <type_traits>
#include <iterator>
#include <cstddef>

template<typename Map, bool IsConst>
class HashMapIterator{
    friend Map;
    friend class HashMapIterator<Map, true>;
    friend class HashMapIterator<Map, false>;

private:
    using node = typename Map::node;
    using bucket_type = typename Map::bucket_type;
    using mp_ptr = std::conditional_t<IsConst, const bucket_type, bucket_type>;


    node* _node;
    size_t bucket_idx;
    mp_ptr* bucket_pointer;

    using mp_itr = std::conditional_t<IsConst, const Map*, Map*>;

    mp_itr _map;

    void find_first_not_empty()
    {
        for (size_t i = 0; i < (*bucket_pointer).size(); ++i)
        {
            if ((*bucket_pointer)[i] != nullptr)
            {
                bucket_idx = i;
                _node = (*bucket_pointer)[i];
                return;
            }
        }

        bucket_idx = (*bucket_pointer).size();
        _node = nullptr;
    }

    HashMapIterator(bucket_type buckets, size_t start);


public:
    using value_type = typename Map::value_type;

    using reference = std::conditional_t<IsConst, const value_type&, value_type&>;
    using pointer = std::conditional_t<IsConst, const value_type*, value_type*>;

    using difference_type = std::ptrdiff_t;
    using iterator_category = std::forward_iterator_tag;



    using NonConst = HashMapIterator<Map, false>;

    using iterator = HashMapIterator<Map, false>;
    using const_iterator = HashMapIterator<Map, true>;


    reference operator*();

    reference operator*() const;

    pointer operator->();

    pointer operator->() const;

    HashMapIterator& operator++();

    HashMapIterator operator++(int);

    template<bool B = IsConst, typename = std::enable_if_t<B>>
    HashMapIterator(const NonConst& other);


    HashMapIterator(Map* map, size_t start);
    HashMapIterator(const Map* map, size_t start);

    template<typename Map_, bool IsConst_>
    friend bool operator==
        (const HashMapIterator<Map_, IsConst_>& lhs, const HashMapIterator<Map_, IsConst_>& rhs);

    template<typename Map_, bool IsConst_>
    friend bool operator!=
        (const HashMapIterator<Map_, IsConst_>& lhs, const HashMapIterator<Map_, IsConst_>& rhs);



};

template<typename Map, bool IsConst>
typename HashMapIterator<Map, IsConst>::reference
HashMapIterator<Map, IsConst>::operator*()
{
    return _node->value;
}

template<typename Map, bool IsConst>
typename HashMapIterator<Map, IsConst>::reference
HashMapIterator<Map, IsConst>::operator*() const
{
    return _node->value;
}

template<typename Map, bool IsConst>
typename HashMapIterator<Map, IsConst>::pointer
HashMapIterator<Map, IsConst>::operator->()
{
    return &(_node->value);
}

template<typename Map, bool IsConst>
typename HashMapIterator<Map, IsConst>::pointer
HashMapIterator<Map, IsConst>::operator->() const
{
    return &(_node->value);
}

template<typename Map, bool IsConst>
HashMapIterator<Map, IsConst>& HashMapIterator<Map, IsConst>::operator++()
{
    if (_node == nullptr)
    {
        return *this;
    }

    if (_node->next == nullptr)
    {
        for (auto start = ++bucket_idx; start < (*bucket_pointer).size(); ++start)
        {
            if ((*bucket_pointer)[start] != nullptr)
            {
                bucket_idx = start;
                _node = (*bucket_pointer)[start];
                return *this;
            }
        }
        _node = nullptr;
    }
    else
    {
        _node = _node->next;
    }

    return *this;
}

template<typename Map, bool IsConst>
HashMapIterator<Map, IsConst> HashMapIterator<Map, IsConst>::operator++(int)
{
    HashMapIterator<Map, IsConst> old = *this;
    ++(*this);
    return old;
}

template<typename Map, bool IsConst>
HashMapIterator<Map, IsConst>::HashMapIterator(Map* map, size_t start)
    : _map(map),
      bucket_pointer(&(map->_buckets_array))
{
    if (start == 0)
    {
        find_first_not_empty();
    }
    else
    {
        bucket_idx = (*bucket_pointer).size();
        _node = nullptr;
    }
}

template<typename Map, bool IsConst>
HashMapIterator<Map, IsConst>::HashMapIterator(const Map* map, size_t start)
    : _map(map),
    bucket_pointer(&(map->_buckets_array))
{
    if (start == 0)
    {
        find_first_not_empty();
    }
    else
    {
        bucket_idx = (*bucket_pointer).size();
        _node = nullptr;
    }
}


template<typename Map, bool IsConst>
bool operator==(const HashMapIterator<Map, IsConst>& lhs, const HashMapIterator<Map, IsConst>& rhs)
{
    if (lhs._map == rhs._map)
    {
        if (lhs._node == rhs._node)
        {
            return true;
        }
    }
    return false;
}

template<typename Map, bool IsConst>
bool operator!=(const HashMapIterator<Map, IsConst>& lhs, const HashMapIterator<Map, IsConst>& rhs)
{
    return !(lhs == rhs);
}


template<typename Map, bool IsConst>
template<bool B, typename>
HashMapIterator<Map, IsConst>::HashMapIterator(const HashMapIterator<Map, IsConst>::NonConst& other)
    : _map(other._map),
    bucket_pointer(other.bucket_pointer),
    bucket_idx(other.bucket_idx),
    _node(other._node)
{}



// "White. A blank page or canvas. His favorite. So many possibilities...""









#endif // HASHMAPITERATOR_H
