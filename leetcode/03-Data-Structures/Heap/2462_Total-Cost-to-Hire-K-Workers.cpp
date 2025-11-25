#include <vector>
#include <algorithm>
#include <queue>

using namespace std;

class Solution
{
public:
    long long totalCost(vector<int> &costs, int k, int candidates)
    {
        int l = costs.size();
        long long sum = 0;
        if (candidates * 2 + k > l)
        {
            nth_element(costs.begin(), costs.begin() + k, costs.end());
            for (int i = 0; i < k; ++i)
            {
                sum += costs[i];
            }
            return sum;
        }
        priority_queue<int, vector<int>, greater<>> left;
        priority_queue<int, vector<int>, greater<>> right;
        for (int i = 0; i < candidates; ++i)
        {
            left.push(costs[i]);
            right.push(costs[l - 1 - i]);
        }
        int m = candidates;
        int n = l - candidates - 1;
        for (int i = 0; i < k; ++i)
        {
            if (left.top() <= right.top())
            {
                sum += left.top();
                left.pop();
                left.push(costs[m++]);
            }
            else
            {
                sum += right.top();
                right.pop();
                right.push(costs[n--]);
            }
        }
        return sum;
    }
};

// 我一直在想如果左右会遇到该怎么办，然后看题解，发现如果左右能遇到，说明直接可以取costs中最小的k个数
// 若是无法碰到，就拿双堆，一个存左边，一个存右边做
// 我好蠢