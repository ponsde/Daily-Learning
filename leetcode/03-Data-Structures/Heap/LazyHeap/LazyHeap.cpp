#include <queue>
#include <unordered_map>
#include <vector>
#include <functional>

using namespace std;

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

// 懒删除堆的模板
// 区别是加了个remove，相当于储存了要删去哪些，若是要弹出的元素需要删除就调用apply_remove
// 还是挺好理解的明白了之后