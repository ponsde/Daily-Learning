#include <vector>
#include <queue>

using namespace std;

class KthLargest
{
    priority_queue<int, vector<int>, greater<>> pq;
    int k;

public:
    KthLargest(int k, vector<int> &nums)
    {
        for (auto i : nums)
        {
            pq.push(i);
        }
        this->k = k;
    }

    int add(int val)
    {
        pq.push(val);
        while (pq.size() > k)
        {
            pq.pop();
        }
        return pq.top();
    }
};

// 好题，新的思路
// 第k大的数，转化为k个数中最小的数即可