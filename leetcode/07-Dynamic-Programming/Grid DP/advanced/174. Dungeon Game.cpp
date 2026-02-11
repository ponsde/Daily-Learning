#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int calculateMinimumHP(vector<vector<int>>& dungeon) {
        int m = dungeon.size();
        int n = dungeon[0].size();

        vector<vector<int>> dp(m + 1, vector<int>(n + 1, INT_MAX));

        dp[m][n - 1] = 1;

        for (int i = m; i > 0; --i)
        {
            for (int j = n; j > 0; --j)
            {
                dp[i - 1][j - 1] = max(1, min(dp[i][j - 1], dp[i - 1][j]) - dungeon[i - 1][j - 1]);
            }
        }

        return dp[0][0];
    }
};

/*
    对于第ij位，它走到这里需要扣掉dungeon[i][j]的血量，同时因为不能死，扣掉后要>= 1
    也就是dp[i][j] - dungeon[i][j] >= 1
    同时对于第i+1,j和i,j+1位，它们的血量要满足能走到第ij位
    dp[i][j] + dungeon[i][j] >= next_dp
    所以，他的最小值就是
    dp[i][j] = max(1, min(next_dp) - dungeon[i][j])
*/

