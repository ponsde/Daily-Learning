#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int maxMoves(vector<vector<int>>& grid) {
        int m = grid.size();
        int n = grid[0].size();
        vector<vector<int>> dp(m, vector<int>(n));
        for (int i = 0; i < m; ++i)
        {
            dp[i][0] = 1;
        }
        for (int j = 0; j < n; ++j)
        {
            for (int i = 0; i < m; ++i)
            {
                if (j + 1 < n)
                {
                    if (i - 1 >= 0 && grid[i - 1][j + 1] > grid[i][j])
                    {
                        dp[i - 1][j + 1] |= dp[i][j];
                    }
                    if (grid[i][j + 1] > grid[i][j])
                    {
                        dp[i][j + 1] |= dp[i][j];
                    }
                    if (i + 1 < m && grid[i + 1][j + 1] > grid[i][j])
                    {
                        dp[i + 1][j + 1] |= dp[i][j];
                    }
                }
                
            }
        }
        int ans = 0;
        for (int j = n - 1; j >= 0; --j)
        {
            for (int i = 0; i < m; ++i)
            {
                if (dp[i][j] > 0)
                {
                    ans = j;
                    return ans;
                }
            }
        }
        return ans;
    }
};

/*
    还好
    注意是列历遍，不要行历遍
*/