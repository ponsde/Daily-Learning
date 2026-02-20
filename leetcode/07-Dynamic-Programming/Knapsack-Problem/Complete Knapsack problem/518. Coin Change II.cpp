#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int change(int amount, vector<int>& coins) {
        vector<unsigned> dp(amount + 1);
        dp[0] = 1;
        for (auto x : coins)
        {
            for (int j = x; j <= amount; ++j)
            {
                dp[j] += dp[j - x];
            }
        }
        return dp[amount];
    }
};

/*
    也就是把最小个数换成了可能性
    题目保证答案是32位的整数那么用unsigned就行
*/