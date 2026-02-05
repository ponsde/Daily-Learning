#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int minFallingPathSum(vector<vector<int>>& matrix) {
        int m = matrix.size();
        int n = matrix[0].size();
        vector<vector<int>> dp(m, vector<int>(n));
        dp[m - 1] = matrix.back();
        for (int i = m - 2; i >= 0; --i)
        {
            for (int j = 0; j < n; ++j)
            {
                if (j + 1 < n && j - 1 >= 0)
                {
                    dp[i][j] = min({dp[i + 1][j + 1], dp[i + 1][j], dp[i + 1][j - 1]}) + matrix[i][j];
                }
                else if (j - 1 < 0)
                {
                    dp[i][j] = min(dp[i + 1][j + 1], dp[i + 1][j]) + matrix[i][j];
                }
                else if (j + 1 >= n)
                {
                    dp[i][j] = min(dp[i + 1][j], dp[i + 1][j - 1]) + matrix[i][j];
                }
                
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
    题目问从下往下走的最小和，那么反过来从下往上走也是一样的。
    dp[i][j]表示从第i行第j列到底的最小和
    状态转移方程：
        dp[i][j] = min(dp[i + 1][j - 1], dp[i + 1][j], dp[i + 1][j + 1]) + matrix[i][j]
    注意边界条件
*/


// 上面中间的代码这样更好
/*
for (int j = 0; j < n; ++j)
{
    int best = dp[i + 1][j];
    if (j + 1 < n)
    {
        best = min(best, dp[i + 1][j + 1]);
    }
    if (j - 1 >= 0)
    {
        best = min(best, dp[i + 1][j - 1]);
    }
    dp[i][j] = best + matrix[i][j];
    
}
*/