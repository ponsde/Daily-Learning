#include <vector>

using namespace std;

class Solution
{
public:
    int combinationSum4(vector<int> &nums, int target)
    {
        int l = nums.size();
        vector<unsigned> dp(target + 1);
        dp[0] = 1;
        for (int i = 1; i <= target; ++i)
        {
            for (auto x : nums)
            {
                if (x > i)
                {
                    continue;
                }
                dp[i] += dp[i - x];
            }
        }
        return dp[target];
    }
};

// 多余 i， 可以由 i - 1， i - 2等 + 1、 + 2等组成，因此dp[i]可以有dp[i - x]累加而来
// dp[0]表示初始情况，即什么都不选的情况，dp[1]的情况由什么都不选的情况加上选1组成，因此dp[1] = dp[0]