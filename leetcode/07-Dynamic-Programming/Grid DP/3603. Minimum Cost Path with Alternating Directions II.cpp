class Solution {
public:
    long long minCost(int m, int n, vector<vector<int>>& waitCost) {
        vector<vector<long long>> dp(m + 1, vector<long long>(n + 1));
        for (int i = 0; i <= n; ++i)
        {
            dp[0][i] = LLONG_MAX;
        }
        for (int i = 0; i <= m; ++i)
        {
            dp[i][0] = LLONG_MAX;
        }
        dp[0][1] = 0;
        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                dp[i + 1][j + 1] = min(dp[i][j + 1], dp[i + 1][j]) + (i + 1) * (j + 1) + 1LL * waitCost[i][j];
            }
        }
        return dp[m][n] - waitCost[m - 1][n - 1] - waitCost[0][0];
    }
};

/*
    通过LLONG_MAX来排除不存在的路径，然后留个0代表入口，最后return减去多加的
    注意不能是INT_MAX，如果里面大于了INT_MAX，就会出问题
*/