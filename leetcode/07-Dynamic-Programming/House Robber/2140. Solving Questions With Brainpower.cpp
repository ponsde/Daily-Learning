class Solution
{
public:
    long long mostPoints(vector<vector<int>> &questions)
    {
        int l = questions.size();
        vector<long long> dp(l + 1);
        for (int i = l - 1; i >= 0; --i)
        {
            int k = questions[i][1];
            int next = min(i + k + 1, l);
            dp[i] = max(dp[next] + questions[i][0], dp[i + 1]);
        }
        return dp[0];
    }
};

/*
从后往前推，对于dp[i]，若是选了它，就要看dp[next] +questions[i][0]和不选它的dp[i + 1]哪个大
为什么不是dp[i - 1]呢? 我们从后往前推，此时dp[i - 1]的状态是未知的
*/

class Solution
{
public:
    long long mostPoints(vector<vector<int>> &questions)
    {
        int l = questions.size();
        vector<long long> dp(l + 1);
        for (int i = 0; i < l; ++i)
        {
            int k = questions[i][1];
            int next = min(i + questions[i][1] + 1, l);
            dp[i + 1] = max(dp[i], dp[i + 1]);
            dp[next] = max(dp[i] + questions[i][0], dp[next]);
        }
        return dp[l];
    }
};

/*
如果从前往后推，如果不选，那么dp[i + 1]就是dp[i]和dp[i + 1]中最大的
如果选，那就是dp[i] + questions[i][0], dp[next]中最大的