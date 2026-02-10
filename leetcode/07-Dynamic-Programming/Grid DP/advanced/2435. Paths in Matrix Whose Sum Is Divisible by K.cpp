#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int numberOfPaths(vector<vector<int>>& grid, int k) {
        int MOD = 1000'000'007;
        int m = grid.size();
        int n = grid[0].size();

        vector<vector<vector<long long>>> dp(m + 1, vector<vector<long long>>(n + 1, vector<long long>(k)));

        dp[0][1][0] = 1;

        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                for (int m = 0; m < k; ++m)
                {
                    dp[i + 1][j + 1][(m + grid[i][j]) % k] = (dp[i + 1][j][m] + dp[i][j + 1][m]) % MOD;
                }
            }
        }

        return dp[m][n][0];
    }
};

/*
    妙啊，跟前面的异或差不多，但这里时要求能整除
    所以要构建3维的dp，但找不到第三维的大小，感觉会爆内存
    但它是能整除，那就直接看余数，每次都mod k，这样第三维就只有k个了
    再做做
*/