#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int longestCommonSubsequence(string text1, string text2) {
        int l1 = text1.size();
        int l2 = text2.size();
        vector<vector<int>> dp(l1 + 1, vector<int>(l2 + 1));
        for (int i = 0; i < l1; ++i)
        {
            for (int j = 0; j < l2; ++j)
            {
                if (text1[i] == text2[j])
                {
                    dp[i + 1][j + 1] = dp[i][j] + 1;
                }
                else
                {
                    dp[i + 1][j + 1] = max(dp[i + 1][j], dp[i][j + 1]);
                }
            }
        }
        return dp[l1][l2];
    }
};

/*
    对于text1的第i位和text2的第j位
    如果二者相同，那么肯定就选，直接在之前的基础上加1
    如果不同，那么秉持着能选就选，dp[i + 1][j + 1] = max(dp[i + 1][j], dp[i][j + 1]);
    
*/