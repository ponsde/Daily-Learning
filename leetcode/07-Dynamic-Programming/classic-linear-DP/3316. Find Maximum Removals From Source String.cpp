class Solution {
public:
    int maxRemovals(string source, string pattern, vector<int>& targetIndices) {
        int ls = source.size();
        int lp = pattern.size();
        vector<int> can(ls);
        vector<vector<int>> dp(ls + 1, vector<int>(lp + 1, INT_MIN / 2));
        dp[0][0] = 0;
        int pre = 0;
        int cnt = 0;
        for (auto x : targetIndices)
        {
            can[x]++;
        }
        for (int i = 1; i <= ls; ++i)
        {
            dp[i][0] = dp[i - 1][0] + can[i - 1];
        }
        for (int i = 0; i < ls; ++i)
        {
            for (int j = 0; j < lp; ++j)
            {
                if (source[i] == pattern[j])
                {
                    dp[i + 1][j + 1] = dp[i][j];
                }
                else
                {
                    dp[i + 1][j + 1] = dp[i][j + 1];
                }

                if (can[i])
                {
                    dp[i + 1][j + 1] = max(dp[i + 1][j + 1], dp[i][j + 1] + 1);
                }
            }
        }
        return dp[ls][lp];
    }
};

/*
 * 差点自己独立做出来...
 * 对于第i、j，如果相同，那么看前i - 1，j - 1
 * 如果不同，就看前i - 1，j
 * 如果要删，删的只是i，那么就是前i - 1，j的最大删除数 + 1
 * 然后初始化记得初始，达不到的地方用INT_MIN / 2来排除
