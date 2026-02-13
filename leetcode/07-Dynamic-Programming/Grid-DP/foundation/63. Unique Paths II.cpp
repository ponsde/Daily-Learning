#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int uniquePathsWithObstacles(vector<vector<int>>& obstacleGrid) {
        int m = obstacleGrid.size();
        int n = obstacleGrid[0].size();
        vector<vector<int>> dp(m + 1, vector<int>(n + 1));
        dp[0][1] = 1;
        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                if (obstacleGrid[i][j] == 1)
                {
                    dp[i + 1][j + 1] = 0;
                    continue;
                }
                dp[i + 1][j + 1] = dp[i + 1][j] + dp[i][j + 1];

            }
        }
        return dp[m][n];
    }
};

/*
    若是第ij处有障碍物，则说明不可以走到这里，那么dp[i][j] = 0
    否则，dp[i][j] = dp[i-1][j] + dp[i][j-1]
*/