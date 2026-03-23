#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int maxProductPath(vector<vector<int>>& grid) {
        int MOD = 1000'000'007;
        int m = grid.size();
        int n = grid[0].size();
        vector<vector<pair<long long, long long>>> dp(m + 1, vector<pair<long long, long long>>(n + 1, {INT_MIN / 2, INT_MIN / 2}));
        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                if (i == 0 && j == 0)
                {
                    dp[i + 1][j + 1] = {grid[i][j], grid[i][j]};
                    continue;
                }
                long long mx = INT_MIN;
                long long mn = INT_MAX;
                if (dp[i + 1][j].first != INT_MIN / 2)
                {
                    mx = max(mx, grid[i][j] * dp[i + 1][j].first);
                    mn = min(mn, grid[i][j] * dp[i + 1][j].first);
                }
                if (dp[i + 1][j].second != INT_MIN / 2)
                {
                    mx = max(mx, grid[i][j] * dp[i + 1][j].second);
                    mn = min(mn, grid[i][j] * dp[i + 1][j].second);
                }
                if (dp[i][j + 1].first != INT_MIN / 2)
                {
                    mx = max(mx, grid[i][j] * dp[i][j + 1].first);
                    mn = min(mn, grid[i][j] * dp[i][j + 1].first);
                }
                if (dp[i][j + 1].second != INT_MIN / 2)
                {
                    mx = max(mx, grid[i][j] * dp[i][j + 1].second);
                    mn = min(mn, grid[i][j] * dp[i][j + 1].second);
                }

                dp[i + 1][j + 1] = {mx, mn};
            }
        }
        return dp[m][n].first >= 0 ? dp[m][n].first % MOD : -1;
    }
};

/*
    因为全初始化的时候如果为0，最后的判断不太好
    因此通过INT_MIN / 2来判断是否更新，只在更新的地方进行min和max
    后面看到灵神的做法，通过判断i、j的位置来判断是否更新，确实更好一些
*/