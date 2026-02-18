#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    vector<int> pathsWithMaxScore(vector<string>& board) {
        int m = board.size();
        int n = board[0].size();
        int MOD = 1000'000'007;

        vector<vector<pair<long long, long long>>> dp(m + 1, vector<pair<long long, long long>>(n + 1, {INT_MIN, 0}));

        dp[m][n] = {0, 1};

        for (int i = m; i > 0; --i)
        {
            for (int j = n; j > 0; --j)
            {
                if (board[i - 1][j - 1] == 'X')
                {
                    continue;
                }
                long long k;
                if (board[i - 1][j - 1] == 'S' || board[i - 1][j - 1] == 'E')
                {
                    k = 0;
                }
                else
                {
                    k = board[i - 1][j - 1] - '0';
                }

                long long res = max({dp[i][j - 1].first, dp[i - 1][j].first, dp[i][j].first});
                
                if (res == INT_MIN)
                {
                    continue;
                }

                long long cnt = (res == dp[i][j - 1].first ? dp[i][j - 1].second : 0) % MOD;
                cnt = (cnt + (res == dp[i][j].first ? dp[i][j].second : 0)) % MOD;
                cnt = (cnt + (res == dp[i - 1][j].first ? dp[i - 1][j].second : 0)) % MOD;

                dp[i - 1][j - 1] = {res + k, cnt};
            }
        }

        if (dp[0][0].second == 0)
        {
            return {0, 0};
        }

        return {static_cast<int>(dp[0][0].first % MOD),  static_cast<int>(dp[0][0].second % MOD)};
    }
};

/*
    对于每一个点，都能从右、下、右下走过去
    然后cnt记录到达最大得分路径数，因此在加的时候应该加其中值等于res的路径数
    最后注意起点和终点的处理，别只处理了起点然后忘了终点

    只能选右下角作为起点，若是其他点，则无法保证路径的唯一性，比如m,n - 1为入口，那么有两个点可以从这个入口进入
*/