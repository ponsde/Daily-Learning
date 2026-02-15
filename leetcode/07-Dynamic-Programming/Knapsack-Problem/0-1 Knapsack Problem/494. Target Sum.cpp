#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int findTargetSumWays(vector<int>& nums, int target) {
        int l = nums.size();
        int t = accumulate(nums.begin(), nums.end(), 0) + target;
        if (t % 2 == 1 || t < 0)
        {
            return 0;
        }
        int tar = t / 2;
        vector<vector<int>> dp(l + 1, vector<int>(tar + 1));
        dp[0][0] = 1;
        for (int i = 0; i < l; ++i)
        {
            for (int j = 0; j <= tar; ++j)
            {
                dp[i + 1][j] += dp[i][j];
                if (j + nums[i] > tar)
                {
                    continue;
                }
                dp[i + 1][j + nums[i]] += dp[i][j];

            }
        }
        return dp[l][tar];
    }
};

/*
    要求其中一部分数的和减去另一部分数的和等于 target
    可以转换为求其中一部分数的和等于 (sum + target) / 2 的问题。
    然后就是求怎么找一部份数的和等于 tar 的问题了。

    对于每一个数，都有选和不选的两种选择
    需要注意的的当t < 0或者t为奇数时，直接返回0，因为不可能找到满足条件的子集
    因为如果t为奇数，那么(t + target) / 2就不是整数了，不可能找到满足条件的子集
    而nums[i]都是非负整数，所以如果t < 0，那么(t + target) / 2也不可能是非负整数了，不可能找到满足条件的子集
    
*/