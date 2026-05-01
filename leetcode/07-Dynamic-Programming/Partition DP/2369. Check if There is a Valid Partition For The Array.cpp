#include <bits/stdc++.h>

using namespace std;

class Solution
{
  public:
    bool validPartition(vector<int> &nums)
    {
        int l = nums.size();
        vector<bool> dp(l + 1, false);
        dp[0] = true;
        for (int i = 0; i < l; ++i)
        {
            dp[i + 1] = (i > 0 && nums[i] == nums[i - 1] && dp[i - 1]) || (i > 1 && nums[i] == nums[i - 1] && nums[i - 1] == nums[i - 2] && dp[i - 2]) || (i > 1 && nums[i] == nums[i - 1] + 1 && nums[i - 1] == nums[i - 2] + 1 && dp[i - 2]);
        }
        return dp[l];
    }
};

/*
 * 划分dp好像没想象中的那么难...？
 * dp定于为第i代表前i个是否符合
 * 那么如果第i个要符合，看看它的条件，如果该连续子数组的长度为2，那么前i - 2个要先满足这样第i个选的2满足也才能成立
 */
