#include <vector>
#include <queue>
#include <algorithm>
#include <map>

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

class Solution
{
public:
    int minGroups(vector<vector<int>> &intervals)
    {
        map<int, int> mp;
        for (auto &i : intervals)
        {
            mp[i[0]]++;
            mp[i[1] + 1]--;
        }
        int ans = 0;
        int sum = 0;
        for (auto &[_, d] : mp)
        {
            sum += d;
            ans = max(ans, sum);
        }
        return ans;
    }
};

// 差分做法

// 找到重叠部分最大的地方，因为重叠肯定不在一组
// 互相重叠的区间，一定不能分到同一组里。所以有多少重叠的区间
// 就等于需要分为多少组。而有多少重叠的区间呢？即同一时刻在车上的最大人数