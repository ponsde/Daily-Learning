#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int maxPathScore(vector<vector<int>>& grid, int k) {        
        int m = grid.size();
        int n = grid[0].size();

        vector<vector<vector<int>>> dp(m + 1, vector<vector<int>>(n + 1, vector<int>(k + 1, INT_MIN)));

        dp[0][1][0] = 0;

        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                if (grid[i][j] == 0)
                {
                    for (int m = 0; m <= k; ++m)
                    {
                        dp[i + 1][j + 1][m] = max(dp[i + 1][j][m], dp[i][j + 1][m]);
                    }
                }
                else
                {
                    for (int m = 0; m < k; ++m)
                    {
                        int best = max(dp[i + 1][j][m], dp[i][j + 1][m]);
                        if (best == INT_MIN)
                        {
                            continue;
                        }
                        dp[i + 1][j + 1][m + 1] = best + grid[i][j];
                    }
                }
            }
        }
        int ans = INT_MIN;
        for (int i = 0; i <= k; ++i)
        {
            ans = max(ans, dp[m][n][i]);
        }
        return ans == INT_MIN ? -1 : ans;
    }
};

/*
    感觉都挺套路化的
    对于dp，通过3维，分别为i、j和花费
    然后若是0格子，则不花费，直接继承上方和左方的最大值
    若是非0格子，则需要花费1，继承上方和左方的最大值加上当前格子的值
    最后在dp[m][n][0..k]中取最大值
*/