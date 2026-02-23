#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    string largestNumber(vector<int>& cost, int target) {
        int l = cost.size();
        vector<string> dp(target + 1, "|");
        dp[0] = "";
        for (int i = 1; i <= l; ++i)
        {
            int c = cost[i - 1];
            for (int j = c; j <= target; ++j)
            {
                if (dp[j - c] == "|") continue;
                string k = dp[j - c] + to_string(i);
                sort(k.rbegin(), k.rend());
                if (dp[j] == "|" || dp[j].size() < k.size())
                {
                    dp[j] = k;
                }
                else if (dp[j].size() == k.size())
                {
                    dp[j] = max(dp[j], k);
                }
            }
        }
        return dp[target] == "|" ? "0" : dp[target];
    }
};

/*
    对于每一个金额，要么选择更长的，要么选择等长的中较大的
    这样用"|"标记不可达，这样能避免空字符串被认为是可达的，就是未到的金额被认为已经到了
    通过哦dp[j] == "|"，避免"|"的长度1干扰dp[j].size() < k.size()的判断
    但这样速度慢会超时
*/

class Solution {
public:
    string largestNumber(vector<int>& cost, int target) {
        int l = cost.size();
        vector<int> dp(target + 1, INT_MIN);
        dp[0] = 0;
        for (int i = 0; i < l; ++i)
        {
            int c = cost[i];
            for (int j = c; j <= target; ++j)
            {
                if (dp[j - c] == INT_MIN) continue;
                dp[j] = max(dp[j], dp[j - c] + 1);
            }
        }

        if (dp[target] == INT_MIN)
        {
            return "0";
        }

        int j = target;
        string ans;
        for (int i = l - 1; i >= 0; --i)
        {
            int c = cost[i];
            while (j >= c && dp[j] == dp[j - c] + 1)
            {
                ans += to_string(i + 1);
                j -= c;
            }
        }
        return ans;
    }
};

/*
    灵神的做法
    妙啊，先计算最长的长度，然后倒着历遍cost，因为最长的长度定的
    那就就看dp[j]和dp[j - c] + 1是否相等，如果相等说明这个数字是最长的组成部分之一，那么就把它加到答案里并且j减去这个数字的cost继续往前走
    妙啊
*/