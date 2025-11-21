#include <queue>
#include <vector>

using namespace std;

class Solution
{
public:
    int minStoneSum(vector<int> &piles, int k)
    {
        priority_queue<int> pq(piles.begin(), piles.end());
        for (int i = 0; i < k; ++i)
        {
            int m = pq.top();
            pq.pop();
            pq.push(m - (int)(m / 2));
        }
        int sum = 0;
        while (!pq.empty())
        {
            sum += pq.top();
            pq.pop();
        }
        return sum;
    }
};

// 找最大