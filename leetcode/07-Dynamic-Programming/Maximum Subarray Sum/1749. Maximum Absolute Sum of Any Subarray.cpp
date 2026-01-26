#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int maxAbsoluteSum(vector<int> &nums)
    {
        int l = nums.size();
        int ans = 0;
        vector<int> dp1(l + 1);
        vector<int> dp2(l + 1);
        int pre = 0;
        for (int i = 1; i <= l; ++i)
        {
            dp1[i] = max(dp1[i - 1], 0) + nums[i - 1];
            dp2[i] = min(dp2[i - 1], 0) + nums[i - 1];
            ans = max({ans, dp1[i], -dp2[i]});
        }
        return ans;
    }
};

/*
    通过2个dp数组，一个记录最大值，一个记录最小值来完成
*/