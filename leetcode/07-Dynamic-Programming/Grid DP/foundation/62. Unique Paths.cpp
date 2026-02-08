#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int uniquePaths(int m, int n) {
        vector<vector<int>> dp(m + 1, vector<int>(n + 1));
        dp[0][1] = 1;
        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                dp[i + 1][j + 1] =  dp[i + 1][j] + dp[i][j + 1];
            }
        }
        return dp[m][n];
    }
};

/*
    我这里还是用哨兵值，也就是设置了一个入口点
    然后它是可能性就加上去就好了
*/