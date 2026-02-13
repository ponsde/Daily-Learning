#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int uniquePaths(vector<vector<int>>& grid) {
        int m = grid.size();
        int n = grid[0].size();

        int MOD = 1000'000'007;

        vector<vector<pair<long long, long long>>> dp(m + 1, vector<pair<long long, long long>>(n + 1));

        dp[0][1] = {1, 1};

        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                if (grid[i][j] == 1)
                {
                    dp[i + 1][j + 1] = {dp[i + 1][j].second % MOD, dp[i][j + 1].first % MOD};
                }
                else
                {
                    int k = (dp[i + 1][j].second + dp[i][j + 1].first) % MOD;
                    dp[i + 1][j + 1] = {k, k};
                }
            }
        }
        return dp[m][n].first;
    }
};

/*
    好耶，一遍过
    对于每一个点，都还是只有从左边到和从上边到两种选择
    但因为镜子会改变方向，因此通过first和second，first记录该点能往下走的可能数，second记录该点能往右走的可能数
    因此在镜子处，左边的点往右走的可能数即为该镜子点往下走的可能数，上边的点往下走的可能数即为该镜子点往右走的可能数
*/