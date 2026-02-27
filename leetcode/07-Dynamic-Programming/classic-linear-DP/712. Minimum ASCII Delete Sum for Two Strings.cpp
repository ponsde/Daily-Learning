#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int minimumDeleteSum(string s1, string s2) {
        int l1 = s1.size();
        int l2 = s2.size();
        vector<vector<int>> dp(l1 + 1, vector<int>(l2 + 1));
        int sum1 = 0;
        int sum2 = 0;
        for (int i = 0; i < l1; ++i)
        {
            sum1 += s1[i];
            dp[i + 1][0] = sum1;
        }
        for (int i = 0; i < l2; ++i)
        {
            sum2 += s2[i];
            dp[0][i + 1] = sum2;
        }
        for (int i = 0; i < l1; ++i)
        {
            for (int j = 0; j < l2; ++j)
            {
                if (s1[i] == s2[j])
                {
                    dp[i + 1][j + 1] = dp[i][j];
                }
                else
                {
                    dp[i + 1][j + 1] = min({dp[i + 1][j] + s2[j], dp[i][j + 1] + s1[i], dp[i][j] + s1[i] + s2[j]});
                }
            }
        }

        return dp[l1][l2];
    }
};

/*
    以我当时最初的想法做，最需要关注的还是边界，边界对了，状态转移方程简单的。
    
*/

class Solution {
public:
    int minimumDeleteSum(string s1, string s2) {
        int l1 = s1.size();
        int l2 = s2.size();
        vector<vector<int>> dp(l1 + 1, vector<int>(l2 + 1));
        for (int i = 0; i < l1; ++i)
        {
            for (int j = 0; j < l2; ++j)
            {
                if (s1[i] == s2[j])
                {
                    dp[i + 1][j + 1] = dp[i][j] + s1[i];
                }
                else
                {
                    dp[i + 1][j + 1] = max(dp[i + 1][j], dp[i][j + 1]);
                }
            }
        }
        int sum = 0;
        for (int i = 0; i < l1; ++i)
        {
            sum += s1[i];
        }
        for (int i = 0; i < l2; ++i)
        {
            sum += s2[i];
        }

        return sum - 2 * dp[l1][l2];
    }
};

/*
    找最大的lcs，然后将两个字符串的ascii码之和减去2倍的lcs的ascii码之和就是结果了
*/