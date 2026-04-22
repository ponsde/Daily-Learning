#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int findNumberOfLIS(vector<int> &nums)
    {
        int l = nums.size();
        vector<int> dp(l, 1);
        vector<int> g(l, 1);
        int len = 1;
        int ans = 0;
        for (int i = 0; i < l; ++i)
        {
            int x = nums[i];
            for (int j = 0; j < i; ++j)
            {
                if (nums[j] >= nums[i])
                    continue;
                if (dp[i] == dp[j] + 1)
                    g[i] += g[j];
                else if (dp[i] < dp[j] + 1)
                {
                    dp[i] = dp[j] + 1;
                    g[i] = g[j];
                }
            }
            len = max(len, dp[i]);
        }
        for (int i = 0; i < l; ++i)
        {
            if (dp[i] == len)
                ans += g[i];
        }
        return ans;
    }
};

/*
    感觉我跟傻掉了一样做不出来
    对于第i个数，dp储存以第i个数结尾的最长递增子序列的长度，g储存个数
    如果dp i 小于 dp j + 1，说明以第i个数结尾的最长递增子序列长度增加了，个数也要更新为g j
    如果dp i 等于 dp j + 1，说明以第i个数结尾的最长递增子序列长度不变了，个数要加上g j
    同时记录最长的len，最后历遍dp时，如果len相同就在ans加上g i
*/