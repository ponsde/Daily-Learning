#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int maximumAmount(vector<vector<int>> &coins)
    {
        int m = coins.size();
        int n = coins[0].size();
        vector<vector<vector<int>>> dp(m + 1, vector<vector<int>>(n + 1, vector<int>(3, INT_MIN / 2)));
        dp[0][1][0] = 0;
        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {

                for (int k = 0; k < 3; ++k)
                {
                    dp[i + 1][j + 1][k] = max(dp[i][j + 1][k], dp[i + 1][j][k]) + coins[i][j];
                }

                if (coins[i][j] < 0)
                {
                    dp[i + 1][j + 1][1] = max(dp[i + 1][j + 1][1], max(dp[i][j + 1][0], dp[i + 1][j][0]));
                    dp[i + 1][j + 1][2] = max(dp[i + 1][j + 1][2], max(dp[i][j + 1][1], dp[i + 1][j][1]));
                }
            }
        }
        return max({dp[m][n][0], dp[m][n][1], dp[m][n][2]});
    }
};

/*
    之前就做过的题目，有2次感化机会，用个3维的数组然后进行即可
    注意当在负数时有感化和不感话，记得max的时候加上上面不感化的情况

    但三重的vector速度有点慢，换成2维vector+array就快了
*/

class Solution
{
public:
    int maximumAmount(vector<vector<int>> &coins)
    {
        int m = coins.size();
        int n = coins[0].size();
        vector<vector<array<int, 3>>> dp(m + 1, vector<array<int, 3>>(n + 1, array<int, 3>{INT_MIN / 2, INT_MIN / 2, INT_MIN / 2}));
        dp[0][1][0] = 0;
        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {

                for (int k = 0; k < 3; ++k)
                {
                    dp[i + 1][j + 1][k] = max(dp[i][j + 1][k], dp[i + 1][j][k]) + coins[i][j];
                }

                if (coins[i][j] < 0)
                {
                    dp[i + 1][j + 1][1] = max(dp[i + 1][j + 1][1], max(dp[i][j + 1][0], dp[i + 1][j][0]));
                    dp[i + 1][j + 1][2] = max(dp[i + 1][j + 1][2], max(dp[i][j + 1][1], dp[i + 1][j][1]));
                }
            }
        }
        return max({dp[m][n][0], dp[m][n][1], dp[m][n][2]});
    }
};

/*
    三维vector需要跳2次才能找到
    而2维+array只需要跳1次就能找到，速度提升了不少
*/