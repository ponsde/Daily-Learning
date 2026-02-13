#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    bool canPartition(vector<int>& nums) {
        long long sum = accumulate(nums.begin(), nums.end(), 0);
        if (sum % 2 != 0)
        {
            return false;
        }
        long long target = sum / 2;
        int l = nums.size();
        vector<vector<int>> dp(l + 1, vector<int>(target + 1));
        dp[0][0] = 1;
        for (int i = 0; i < l; ++i)
        {
            for (int j = 0; j <= target; ++j)
            {
                dp[i + 1][j] |= dp[i][j];
                if (j - nums[i] >= 0)
                {
                    dp[i + 1][j] |= dp[i][j - nums[i]];
                }
            }
           
        }
        return dp[l][target] > 0;
    }
};

/*
    对于每个数，都有选和不选的两种选择
    因此对于每一个i + 1,j，都可以从i,j和i,j - nums[i]转移过来
    可以想象成一行行格子，价值1的格子层层渗透上去
*/