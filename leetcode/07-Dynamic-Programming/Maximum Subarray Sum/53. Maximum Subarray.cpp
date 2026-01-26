#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int maxSubArray(vector<int> &nums)
    {
        int l = nums.size();
        vector<int> dp(l + 1);
        int ans = INT_MIN;
        for (int i = 1; i <= l; ++i)
        {
            dp[i] = max(dp[i - 1], 0) + nums[i - 1];
            ans = max(ans, dp[i]);
        }
        return ans;
    }
};

/*
    若是dp[i - 1]小于0，那就舍去不要从该点为新的起点继续累加
    若是dp[i - 1]大于等于0，那就继续累加
*/