#include <queue>
#include <vector>
#include <unordered_map>
#include <functional>

using namespace std;

class NumberContainers
{
    template <typename T, typename cmp = less<>>
    class LazyHeap
    {
    private:
        priority_queue<T, vector<T>, cmp> pq;
        unordered_map<T, int> cnt;
        size_t sz = 0;
        void apply_remove()
        {
            while (!pq.empty() && cnt[pq.top()] > 0)
            {
                cnt[pq.top()]--;
                pq.pop();
            }
        }

    public:
        size_t size()
        {
            return sz;
        }

        void remove(T x)
        {
            cnt[x]++;
            sz--;
        }

        T top()
        {
            apply_remove();
            if (sz == 0)
            {
                return -1;
            }
            return pq.top();
        }

        void push(T x)
        {
            if (cnt[x] > 0)
            {
                cnt[x]--;
            }
            else
            {
                pq.push(x);
            }
            sz++;
        }

        void pop()
        {
            apply_remove();
            sz--;
            pq.pop();
        }
    };

    unordered_map<int, LazyHeap<int, greater<>>> hash;
    unordered_map<int, int> used;

public:
    NumberContainers()
    {
    }

    void change(int index, int number)
    {
        auto &t = hash[number];
        auto temp = used.find(index);
        if (temp == used.end())
        {
            t.push(index);
        }
        else
        {
            if (temp->second == number)
            {
                return;
            }
            hash[temp->second].remove(index);
            t.push(index);
        }
        used[index] = number;
    }

    int find(int number)
    {
        auto k = hash.find(number);
        if (k == hash.end())
        {
            return -1;
        }
        return hash[number].top();
    }
};

// 还行，两个hash表和一个lazyheap
// 一个hash表储存number和对应的lazyheap
// 另一个储存idx和对应的number