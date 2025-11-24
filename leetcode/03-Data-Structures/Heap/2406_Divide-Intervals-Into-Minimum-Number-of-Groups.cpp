#include <vector>
#include <queue>
#include <algorithm>

using namespace std;

class Solution
{
public:
    int minGroups(vector<vector<int>> &intervals)
    {
        sort(intervals.begin(), intervals.end());
        priority_queue<int, vector<int>, greater<>> pq;
        for (auto &p : intervals)
        {
            if (!pq.empty() && pq.top() < p[0])
            {
                pq.pop();
            }
            pq.push(p[1]);
        }
        return pq.size();
    }
};

// 因为不关注顺序，因此先排序，有个良好的顺序
// 然后历遍，若是下一个的左端点比所有的组的最小的右端点还小，则任何组都与该区间重合
// 完蛋没睡好，明天再做一遍