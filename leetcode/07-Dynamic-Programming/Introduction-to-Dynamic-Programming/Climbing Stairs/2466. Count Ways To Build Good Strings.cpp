#include <vector>

using namespace std;

class Solution
{
public:
    int countGoodStrings(int low, int high, int zero, int one)
    {
        int MOD = 1000'000'007;
        vector<long long> dp(high + 1);
        dp[0] = 1;
        for (int i = 1; i <= high; ++i)
        {
            if (zero <= i)
            {
                dp[i] += dp[i - zero];
                dp[i] %= MOD;
            }
            if (one <= i)
            {
                dp[i] += dp[i - one];
                dp[i] %= MOD;
            }
        }
        long long ans = 0;
        for (int i = low; i <= high; ++i)
        {
            ans += dp[i];
        }
        return ans % MOD;
    }
};

/*
    构建长为low到high的字符串，因为给的是zero和one，因此这样不会出现重复的情况
*/