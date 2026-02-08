#include <bits/stdc++.h>

using namespace std;

int dp[305][305][16];

class Solution {
public:
    int countPathsWithXorValue(vector<vector<int>>& grid, int std) {
        int MOD = 1000'000'007;
        int m = grid.size();
        int n = grid[0].size();
        memset(dp, 0, sizeof(dp));
        dp[0][0][grid[0][0]] = 1;
        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                for (int k = 0; k < 16; ++k)
                {
                    if (i + 1 < m)
                    {
                        dp[i + 1][j][k ^ grid[i + 1][j]] = (dp[i + 1][j][k ^ grid[i + 1][j]] + dp[i][j][k]) % MOD;
                    }
                    if (j + 1 < n)
                    {
                        dp[i][j + 1][k ^ grid[i][j + 1]] = (dp[i][j + 1][k ^ grid[i][j + 1]] + dp[i][j][k]) % MOD;
                    }
                    
                }
            }
        }
        return dp[m - 1][n - 1][std];
    }
};

/*
    最开始用dfs，然后知晓了需要3个参数
    然后发现超时，因为是3个hash表，然后换成了dp
    因为0 <= k < 16，因此sum直接开16个空间就行
*/