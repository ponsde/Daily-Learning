#include <bits/stdc++.h>

using namespace std;

class Solution
{
  public:
    bool wordBreak(string s, vector<string> &wordDict)
    {
        int ls = s.size();
        vector<bool> dp(ls + 1, false);
        dp[0] = true;
        for (int i = 0; i < ls; ++i)
        {
            for (auto w : wordDict)
            {
                int lw = w.size();
                int left = i - lw + 1;
                if (left < 0)
                    continue;
                dp[i + 1] = dp[left] && s.substr(left, lw) == w;
                if (dp[i + 1] == true)
                    break;
            }
        }
        return dp[ls];
    }
};

/*
 * 从左到右走，若是该单词满足前前面那部分也要满足
 */
