#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    long long maxScore(vector<int>& a, vector<int>& b) {
        int l = b.size();
        vector<vector<long long>> dp(5, vector<long long>(l + 1));
        for (int i = 1; i <= 4; ++i)
        {
            dp[i][0] = LLONG_MIN / 2;
        }
        int k = 0;
        for (int i = 0; i < 4; ++i)
        {
            for (int j = 0; j < l; ++j)
            {
                dp[i + 1][j + 1] = max({dp[i][j] + (long long)a[i] * b[j], dp[i + 1][j]});
                
            }
        }
        return dp[4][l];
    }
};

/*
 * 对于第i个a来讲，如果选b j，那么看前i - 1和前j - 1的最大值加上a i * a j
 * 如果不选b j，那么看前i和前j - 1的最大值
 * 我似乎想明白了点，对于第j个，如果不选，又因为那个位置会被覆盖，对于选的情况，将i - 1，j - 1和两者都选的积加上即可
 * 如果不选，又要覆盖了这个j，代表不选，那么就看i和j - 1
 * 再做一遍
