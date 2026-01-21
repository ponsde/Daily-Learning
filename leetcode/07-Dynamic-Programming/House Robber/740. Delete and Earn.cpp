#include <bits/stdc++.h>

using namespace std;

int arr[10005];

class Solution
{
public:
    int deleteAndEarn(vector<int> &nums)
    {
        int mx = *max_element(nums.begin(), nums.end());
        for (int i = 0; i < mx + 5; ++i)
        {
            arr[i] = 0;
        }
        for (auto x : nums)
        {
            arr[x]++;
        }
        vector<int> dp(mx + 3);

        for (int i = 0; i <= mx; ++i)
        {
            dp[i + 2] = max(dp[i] + arr[i] * i, dp[i + 1]);
        }
        return dp[mx + 2];
    }
};

/*
    选了nums[i]，然后删除它相邻的+1和-1，代表着不选则相邻的数，因此可以转换成打家劫舍问题
    为什么这里的dp[0]为0而不是1呢?它的可能性为空集，为1，但它拥有的积分为0，因此dp[0] = 0
*/