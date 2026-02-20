#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int numSquares(int n) {
        vector<int> dp(n + 1, INT_MAX / 2);
        dp[0] = 0;
        for (int i = 1; i * i <= n; ++i)
        {
            int m = i * i;
            for (int j = i * i; j <= n; ++j)
            {
                if (dp[j - m] == INT_MAX / 2) continue;
                dp[j] = min(dp[j], dp[j - m] + 1);
            }
        }
        return dp[n];
    }
};

/*
    完全背包，要求组成数个完全平方数的和等于 n，求最少的完全平方数个数
    那么dp的数组长度为n，然后循环到i * i == n
    然后从小到大历遍dp数组，更新dp[j] = min(dp[j], dp[j - m] + 1)，其中m为i * i
*/