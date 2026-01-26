#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int maximumCostSubstring(string s, string chars, vector<int> &vals)
    {
        int ans = 0;
        int l = s.size();
        vector<int> dp(l + 1);
        for (int i = 1; i <= l; ++i)
        {
            if (chars.find(s[i - 1]) != string::npos)
            {
                dp[i] = max(dp[i - 1], 0) + vals[chars.find(s[i - 1])];
            }
            else
            {
                dp[i] = max(dp[i - 1], 0) + s[i - 1] - 'a' + 1;
            }
            ans = max(ans, dp[i]);
        }
        return ans;
    }
};

/*
    类似
*/