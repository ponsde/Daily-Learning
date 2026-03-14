#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int numDistinct(string s, string t) {
        int ls = s.size();
        int lt = t.size();
        vector<vector<unsigned>> dp(ls + 1, vector<unsigned>(lt + 1));
        for (int i = 0; i <= ls; ++i)
        {
            dp[i][0] = 1;
        }
        for (int i = 0; i < ls; ++i)
        {
            for (int j = 0; j < lt; ++j)
            {
                if (s[i] == t[j])
                {
                    dp[i + 1][j + 1] = dp[i][j + 1] + dp[i][j];
                }
                else
                {
                    dp[i + 1][j + 1] = dp[i][j + 1];
                }
            }
        }
        return dp[ls][lt];
    }
};

/*
 * 嘶，对于第i、j 个字母，如果它删掉，就看前i - 1个到j的可能性
 * 如果不删，也就是字母i == j的时候，那么就是再加上第前i - 2到前j - 1的可能性
 */

class Solution {
public:
    int numDistinct(string s, string t) {
        int ls = s.size();
        int lt = t.size();
        if (ls < lt) return 0;
        vector<vector<unsigned>> dp(ls + 1, vector<unsigned>(lt + 1));
        dp[0][0] = 1;
        for (int i = 0; i < ls; ++i)
        {
            dp[i + 1][0] = 1;
            for (int j = max(lt - ls + i, 0); j < min(i + 1, lt); ++j)
            {
                dp[i + 1][j + 1] = dp[i][j + 1];
                if (s[i] == t[j])
                {
                    dp[i + 1][j + 1] += dp[i][j];
                }
            }
        }
        return dp[ls][lt];
    }
};

/*
 * 灵神的优化版
 * lt - ls + i意味
 * 若是i剩下部分的大小和t的长度的关系，若是太小，就无法达到lt，因此优化
 * i + 1， lt意味取了i位的大小和s的关系，如果s太小，那么j就无法读满，因此优化
 */
