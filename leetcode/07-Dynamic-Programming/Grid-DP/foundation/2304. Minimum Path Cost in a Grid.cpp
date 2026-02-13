#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int minPathCost(vector<vector<int>>& grid, vector<vector<int>>& moveCost) {
        int m = grid.size();
        int n = grid[0].size();
        vector<vector<int>> dp(m, vector<int>(n));
        dp[m - 1] = grid.back();
        for (int i = m - 2; i >= 0; --i)
        {
            for (int j = 0; j < n; ++j)
            {
                int best = INT_MAX;
                for (int k = 0; k < n; ++k)
                {
                    int t = dp[i + 1][k] + grid[i][j] + moveCost[grid[i][j]][k];
                    best = min(best, t);
                }
                dp[i][j] = best;
            }
        }
        int ans = INT_MAX;
        for (int i = 0; i < n; ++i)
        {
            ans = min(ans, dp[0][i]);
        }
        return ans;
    }
};

/*
    不难。从后往前走，然后这样即可
*/