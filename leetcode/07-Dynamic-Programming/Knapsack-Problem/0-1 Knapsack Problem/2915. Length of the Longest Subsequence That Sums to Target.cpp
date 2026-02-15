#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int lengthOfLongestSubsequence(vector<int>& nums, int target) {
        int l = nums.size();
        vector<vector<int>> dp(l + 1, vector<int>(target + 1, INT_MIN / 2));
        dp[0][0] = 0;
        for (int i = 0; i < l; ++i)
        {
            for (int j = 0; j <= target; ++j)
            {
                dp[i + 1][j] = max(dp[i + 1][j], dp[i][j]);
                
                if (j + nums[i] <= target && dp[i][j] != INT_MIN / 2)
                {
                    dp[i + 1][j + nums[i]] = max(dp[i + 1][j + nums[i]], dp[i][j] + 1);
                }
            }
        }
        return dp[l][target] == INT_MIN / 2 ? -1 : dp[l][target];
    }
};

/*
    对于第i个数，如果不选，那么就是dp[i - 1][j]
    如果选，那么就是dp[i - 1][j - nums[i]] + 1
    但是因为存在dp[i - 1][j - nums[i]]会覆盖dp[i - 1][j]的情况
    所以需要在dp[i][j] = max(dp[i][j], dp[i - 1][j])
    在可能出现覆盖的情况下，获得max的步数
*/

class Solution {
public:
    int lengthOfLongestSubsequence(vector<int>& nums, int target) {
        int l = nums.size();
        vector<vector<int>> dp(l + 1, vector<int>(target + 1, INT_MIN / 2));
        dp[0][0] = 0;
        for (int i = 0; i < l; ++i)
        {
            int x = nums[i];
            for (int j = 0; j <= target; ++j)
            {
                if (j < x)
                {
                    dp[i + 1][j] = dp[i][j];
                }
                else
                {
                    dp[i + 1][j] = max(dp[i][j], dp[i][j - x] + 1);
                }
            }
        }
        return dp[l][target] < 0 ? -1 : dp[l][target];
    }
};

/*
    灵神的解法，它这样好一点
*/