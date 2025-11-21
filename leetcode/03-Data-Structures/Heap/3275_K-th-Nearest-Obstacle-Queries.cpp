#include <vector>
#include <queue>
#include <cmath>

using namespace std;

class Solution
{
public:
    vector<int> resultsArray(vector<vector<int>> &queries, int k)
    {
        priority_queue<int, vector<int>> pq;
        int l = queries.size();
        vector<int> ans(l, -1);
        for (int i = 0; i < l; ++i)
        {
            int t = abs(queries[i][0]) + abs(queries[i][1]);
            pq.push(t);
            if (pq.size() < k)
            {
                continue;
            }
            while (pq.size() > k)
            {
                pq.pop();
            }
            ans[i] = pq.top();
        }
        return ans;
    }
};

// 距离原点第k近，也就是靠近原点k个数中最大的那个数
// abs是cmath的