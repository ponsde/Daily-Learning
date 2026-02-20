#include <bits/stdc++.h>

using namespace std;


class Solution {
public:
    int coinChange(vector<int>& coins, int amount) {
        int l = coins.size();
        vector<int> dp(amount + 1, INT_MAX / 2);
        dp[0] = 0;
        for (int i = 0; i < l; ++i)
        {
            int x = coins[i];
            for (int j = x; j <= amount; ++j)
            {
                if (dp[j - x] == INT_MAX / 2) continue;
                dp[j] = min(dp[j], dp[j - x] + 1);
            }
        }
        return dp[amount] == INT_MAX / 2 ? -1 : dp[amount];
    }
};

/*
    硬币可以重复选
    完全背包，从前往后历遍
    dp[0] = 0留入口
*/