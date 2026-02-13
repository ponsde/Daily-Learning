#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int maxSubarraySumCircular(vector<int> &nums)
    {
        int l = nums.size();
        int sum = accumulate(nums.begin(), nums.end(), 0);
        vector<int> fmax(l + 1);
        vector<int> fmin(l + 1);
        int mx = INT_MIN;
        int mn = INT_MAX;
        for (int i = 1; i <= l; ++i)
        {
            fmax[i] = max(fmax[i - 1], 0) + nums[i - 1];
            fmin[i] = min(fmin[i - 1], 0) + nums[i - 1];
            mx = max(fmax[i], mx);
            mn = min(mn, fmin[i]);
        }
        if (sum - mn == 0)
        {
            return mx;
        }
        return max(mx, sum - mn);
    }
};

// 分为2种情况，第一种为最大的子数组没有跨过边界，此时直接返回max即可
// 第二种情况，若是跨越边界，那么需要返回sum - min
// 此时有一种特殊情况，也就是所有数都是负数，此时的最小sum为所有的和，sum - min = 0
// 此时特判返回mx