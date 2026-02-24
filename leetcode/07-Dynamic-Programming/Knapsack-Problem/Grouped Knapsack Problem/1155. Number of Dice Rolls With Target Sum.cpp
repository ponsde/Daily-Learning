#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int numRollsToTarget(int n, int k, int target) {
        int MOD = 1000'000'007;
        vector<long long> dp(target + 1);
        dp[0] = 1;
        for (int i = 0; i < n; ++i)
        {
            vector<long long> t(target + 1);
            for (int m = 1; m <= k; ++m)
            {
                for (int j = target; j >= m; --j)
                {
                    t[j] = (t[j] + dp[j - m]) % MOD;
                }
            }

            dp = move(t);
        }
        return dp[target] % MOD;
    }
};

/*
    类似于那个多重背包，但这里的骰子必须骰没有不投的选择
    因此最后要dp = move(t);，如果有不投的选择的话，那么和多重背包一样为dp[i] = (dp[i] + t[i]) % MOD;
*/

class Solution {
public:
    int numRollsToTarget(int n, int k, int target) {
        int MOD = 1000'000'007;
        vector<long long> dp(target + 1);
        dp[0] = 1;
        for (int i = 0; i < n; ++i)
        {
            for (int j = target; j >= 0; --j)
            {
                int t = 0;
                for (int m = 1; m <= min(k, j); ++m)
                {
                    t = (t + dp[j - m]) % MOD;
                }
                dp[j] = t;
            }
        }
        return dp[target] % MOD;
    }
};

/*
    按照灵神的思路重写了遍
    这里需要注意的是，只有在投第一个时，dp[0]才能为1
    若是到了第二个，dp[0]还是为1时，那么就会认为第一个可以不投，那这里不能不投
    因此将j弄成>=0，这样能把dp[0]在第二轮开始设为0
*/