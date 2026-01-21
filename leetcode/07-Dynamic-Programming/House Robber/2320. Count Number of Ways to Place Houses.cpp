#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int countHousePlacements(int n)
    {
        int MOD = 1000'000'007;
        vector<long long> dp(n + 1);
        dp[0] = 1;
        dp[1] = 2;
        for (int i = 0; i < n - 1; ++i)
        {
            dp[i + 2] = (dp[i] + dp[i + 1]) % MOD;
        }
        return dp[n] * dp[n] % MOD;
    }
};

/*
    对于位置0的地皮，空集那么为1种，位置1的地皮，可以有放和不放两种，因此为2
    对于位置为i的地皮，有放和不放的情况，若是放则+dp[i-2]，若是不放则+dp[i-1]
    为什么在中间不用+1?对于每个方案都是一连串从起点到终点，我们做的只是选择方案而不是创造方案
*/