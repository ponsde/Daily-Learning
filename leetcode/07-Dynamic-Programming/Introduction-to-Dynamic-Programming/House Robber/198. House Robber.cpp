#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int rob(vector<int> &nums)
    {
        int l = nums.size();
        vector<int> dp(l + 2);
        for (int i = 0; i < l; ++i)
        {
            dp[i + 2] = max(dp[i] + nums[i], dp[i + 1]);
        }
        return dp[l + 1];
    }
};

/*
    看第i家的最大收益，则为偷了第i-2家和第i家的收益和偷了第i-1家的收益最大的是什么
*/