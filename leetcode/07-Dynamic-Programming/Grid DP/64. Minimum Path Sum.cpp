#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int minPathSum(vector<vector<int>>& grid) {
        int m = grid.size();
        int n = grid[0].size();
        vector<vector<int>> dp(m + 2, vector<int>(n + 2));
        for (int i = 0; i <= m + 1; ++i)
        {
            dp[i][0] = INT_MAX / 2;
            dp[i][n + 1] = INT_MAX / 2;
        }
        for (int i = 0; i <= n + 1; ++i)
        {
            dp[0][i] = INT_MAX / 2;
            dp[m + 1][i] = INT_MAX / 2;
        }
        for (int i = 1; i <= m; ++i)
        {
            for (int j = 1; j <= n; ++j)
            {
                int res = min(dp[i - 1][j], dp[i][j - 1]);
                dp[i][j] = (res == INT_MAX / 2 ? 0 : res) + grid[i - 1][j - 1];
            }
        }
        return dp[m][n];
    }
};

/*
    对于第i个位置，可以由左边和上面走到，所以min(dp[i - 1][j], dp[i][j - 1])
    若是为边界位置，则设为一个较大值，避免越界，然后判断是在边界时将其作为0处理
*/

class Solution {
public:
    int minPathSum(vector<vector<int>>& grid) {
        int m = grid.size();
        int n = grid[0].size();
        vector<vector<int>> dp(m + 2, vector<int>(n + 2, INT_MAX));
        dp[0][1] = 0;
        for (int i = 1; i <= m; ++i)
        {
            for (int j = 1; j <= n; ++j)
            {
                dp[i][j] = min(dp[i - 1][j], dp[i][j - 1]) + grid[i - 1][j - 1];
            }
        }
        return dp[m][n];
    }
};

/*
    这里通过建立一个虚拟的入口，将边界条件简化
    对于dp[1][1]，它min(dp[0][1], dp[1][0])，因此只需要初始化dp[1][0] 或者 dp[0][1]为0即可
*/