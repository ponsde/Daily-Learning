#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int numberOfWays(int n, int x) {
        int MOD = 1000'000'007;
        vector<long long> dp(n + 1);
        dp[0] = 1;
        for (int i = 1; (int)pow(i, x) <= n; ++i)
        {
            int m = pow(i, x);
            for (int j = n; j >= m; --j)
            {
                dp[j] += dp[j - m];
            }
        }
        return dp[n] % MOD;
    }
};

/*
    学会了个1维dp
    对于n件物品
    01背包的做法：
    对于每一件物品，倒序遍历背包容量，更新dp[j] += dp[j - m]
    原因：避免重复使用同一件物品
    完全背包的做法：
    对于每一件物品，正序遍历背包容量，更新dp[j] += dp[j - m]
    原因：允许重复使用同一件物品
*/