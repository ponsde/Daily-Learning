#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int minDistance(string word1, string word2)
    {
        int l1 = word1.size();
        int l2 = word2.size();
        if (word1 == word2)
            return 0;
        vector<vector<int>> dp(l1 + 1, vector<int>(l2 + 1));
        for (int i = 1; i <= l1; ++i)
        {
            dp[i][0] = i;
        }
        for (int i = 1; i <= l2; ++i)
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
                    dp[i + 1][j + 1] = min({dp[i + 1][j] + 1, dp[i][j + 1] + 1, dp[i][j] + 1});
                }
            }
        }
        return dp[l1][l2];
    }
};

/*
    对于word1的前i个和word2的前j个
    因为要让word1变为word2，有3种操作：删除、插入、替换
    如果是删除，那么 dp[i][j + 1] + 1 (因为前后都是j+1，代表没有进行新增的)
    如果是插入，那么 dp[i + 1][j] + 1
    如果是替换，那么 dp[i][j] + 1
    最后取他们中最小的
    注意要初始化dp[i][0]和dp[0][j]
    因为如果不初始化，那么会认为前i个字符到0个字符的操作是0，而实际上是i个删除操作
*/