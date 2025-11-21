#include <vector>
#include <algorithm>
#include <queue>

using namespace std;

class Solution
{
public:
    vector<int> getFinalState(vector<int> &nums, int k, int multiplier)
    {
        int l = nums.size();
        vector<vector<int>> vec(l);
        for (int i = 0; i < l; ++i)
        {
            vec[i].push_back(nums[i]);
            vec[i].push_back(i);
        }
        make_heap(vec.begin(), vec.end(), greater<>());
        for (int i = 0; i < k; ++i)
        {
            pop_heap(vec.begin(), vec.end(), greater<>());
            vec.back()[0] *= multiplier;
            push_heap(vec.begin(), vec.end(), greater<>());
        }
        vector<int> ans(l);
        for (int i = 0; i < l; ++i)
        {
            ans[vec[i][1]] = vec[i][0];
        }
        return ans;
    }
};

// 因为要保持原数组的顺序，因此用个二维数组做做
// 最小堆的make_heap、pop_heap、push_heap都要带上greater
// 在堆中的greater是从小到大，因此当数相同时，比较索引，会先将索引小的放上面
// 最后将索引和对应的值放入ans

// 后面还有个红色的II， 我日后再做...

class Solution
{
public:
    vector<int> getFinalState(vector<int> &nums, int k, int multiplier)
    {
        int l = nums.size();
        vector<pair<int, int>> vec(l);
        for (int i = 0; i < l; ++i)
        {
            vec[i] = make_pair(nums[i], i);
        }
        priority_queue<pair<int, int>, vector<pair<int, int>>, greater<>> pq(vec.begin(), vec.end());
        for (int i = 0; i < k; ++i)
        {
            auto a = pq.top();
            pq.pop();
            a.first *= multiplier;
            pq.push(a);
        }
        vector<int> ans(l);
        while (!pq.empty())
        {
            ans[pq.top().second] = pq.top().first;
            pq.pop();
        }
        return ans;
    }
};

// 优先队列初始化要在<>里