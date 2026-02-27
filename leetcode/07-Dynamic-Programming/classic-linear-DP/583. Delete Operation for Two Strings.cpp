#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int minDistance(string word1, string word2) {
        int l1 = word1.size();
        int l2 = word2.size();
        vector<vector<int>> dp(l1 + 1, vector<int>(l2 + 1));

        for (int i = 0; i < l1; ++i)
        {
            for (int j = 0; j < l2; ++j)
            {
                if (word1[i] == word2[j])
                {
                    dp[i + 1][j + 1] = dp[i][j] + 1;
                }
                else
                {
                    dp[i + 1][j + 1] = max(dp[i][j + 1], dp[i + 1][j]);
                }
            }
        }
        return l1 + l2 - 2 * dp[l1][l2];
    }
};

/*
    对于两个字符串要删除多少能达到相同，求最小的删除次数
    转化为求两个字符串的相同的最长子序列，最长子序列的长度为lcs，那么删除的次数就是两个字符串的长度之和减去2倍的lcs
*/

class Solution {
public:
    int minDistance(string word1, string word2) {
        int l1 = word1.size();
        int l2 = word2.size();
        vector<vector<int>> dp(l1 + 1, vector<int>(l2 + 1));
        for (int i = 0; i <= l1; ++i)
        {
            dp[i][0] = i;
        }
        for (int i = 0; i <= l2; ++i)
        {
            dp[0][i] = i;
        }

        for (int i = 0; i < l1; ++i)
        {
            for (int j = 0; j < l2; ++j)
            {
                if (word1[i] == word2[j])
                {
                    dp[i + 1][j + 1] = dp[i][j];
                }
                else
                {
                    dp[i + 1][j + 1] = min({dp[i][j + 1] + 1, dp[i + 1][j] + 1, dp[i][j] + 2});
                }
            }
        }
        return dp[l1][l2];
    }
};

/*
    这是我最开始的思路，当时不知道错在哪以为思路不对，后面问了ai，发现是边界的设置
    对于dp[i][0]和dp[0][j]，它们的初始化应该是word1的前i个字符到word2的0个字符需要的最小删除数，因为这是可以达到的
    同样的，word1的0个字符到word2的前j个字符需要的最小删除数也是可以达到的，所以dp[0][j] = j
    这样就能保证在后续的状态转移中，dp[i][j]的值是正确的，因为它依赖于dp[i - 1][j]和dp[i][j - 1]，而这些值已经被正确地初始化了
*/