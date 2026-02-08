#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int minimumTotal(vector<vector<int>>& triangle) {
        int m = triangle.size();
        int n = triangle[triangle.size() - 1].size();
        vector<vector<int>> dp(m, vector<int>(n));
        dp[m - 1] = triangle.back();
        for (int i = m - 2; i >= 0; --i)
        {
            for (int j = 0; j < triangle[i].size(); ++j)
            {
                dp[i][j] = min(dp[i + 1][j], dp[i + 1][j + 1]) + triangle[i][j];
            }
        }
        return dp[0][0];
    }
};

/*
    对于第 i, j 个元素，它的下一个是 i + 1, j 和 i + 1, j + 1
    因此我们从后往前，这样就能避免j + 1越界
    同时我们限制 i，让i + 1为最后一行，提前赋值
    
*/