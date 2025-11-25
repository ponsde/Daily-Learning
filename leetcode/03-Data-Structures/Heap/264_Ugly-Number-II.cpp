#include <queue>
#include <unordered_set>
#include <vector>

using namespace std;

class Solution
{
public:
    int nthUglyNumber(int n)
    {
        priority_queue<long long, vector<long long>, greater<>> pq;
        unordered_set<long long> us;
        pq.push(1);
        vector<int> factor{2, 3, 5};
        long long cur;
        for (int i = 0; i < n; ++i)
        {
            cur = pq.top();
            pq.pop();
            for (auto mul : factor)
            {
                long long t = cur * mul;
                if (us.find(t) == us.end())
                {
                    us.insert(t);
                    pq.push(t);
                }
            }
        }
        return cur;
    }
};

// 用for循环做不了，会超时，因此换成这个
// cur为第n的数，用小根堆来做
// cur为堆中最小的数，每次取完pop，然后往下走，用unordered_set来判断是否有重叠