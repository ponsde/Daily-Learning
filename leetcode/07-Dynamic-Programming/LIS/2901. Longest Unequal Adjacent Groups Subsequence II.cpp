#include <bits/stdc++.h>

using namespace std;

class Solution
{
    bool check(string &a, string &b)
    {
        int l = a.size();
        int cnt = 0;
        for (int i = 0; i < l; ++i)
        {
            if (a[i] != b[i])
                cnt++;
            if (cnt > 1)
                break;
        }
        return cnt == 1;
    }

public:
    vector<string> getWordsInLongestSubsequence(vector<string> &words, vector<int> &groups)
    {
        int l = words.size();
        vector<int> from(l, -1);
        vector<int> dp(l);

        int mx_i = 0;
        for (int i = 0; i < l; ++i)
        {

            for (int j = 0; j < i; ++j)
            {
                if (groups[j] != groups[i] && dp[j] > dp[i] && words[i].size() == words[j].size() && check(words[j], words[i]))
                {
                    dp[i] = dp[j];
                    from[i] = j;
                }
            }
            dp[i] += 1;
            if (dp[i] > dp[mx_i])
            {
                mx_i = i;
            }
        }
        vector<string> ans;
        for (int i = mx_i; i >= 0; i = from[i])
        {
            ans.push_back(words[i]);
        }
        reverse(ans.begin(), ans.end());
        return ans;
    }
};

/*
    唔还好，要求前一个后和一个不在同一组、汉明距离为1，数据量是1000，那么O(n^2)的解法是可以接受的。

*/