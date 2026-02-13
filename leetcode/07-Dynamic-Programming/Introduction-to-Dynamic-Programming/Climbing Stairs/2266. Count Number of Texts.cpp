#include <bits/stdc++.h>

using namespace std;

class Solution
{
    unordered_map<char, int> hash{{'2', 3}, {'3', 3}, {'4', 3}, {'5', 3}, {'6', 3}, {'7', 4}, {'8', 3}, {'9', 4}};

public:
    int countTexts(string pressedKeys)
    {
        int MOD = 1000'000'007;
        int l = pressedKeys.size();
        vector<long long> dp(l + 1);
        dp[0] = 1;
        int cnt = 0;
        char pre = '~';
        for (int i = 0; i < l; ++i)
        {
            if (pre != pressedKeys[i])
            {
                pre = pressedKeys[i];
                cnt = 0;
            }
            ++cnt;

            int max_len = hash[pre];
            int limit = min(max_len, cnt);
            for (int j = i - limit + 1; j <= i; ++j)
            {
                dp[i + 1] += dp[j];
                dp[i + 1] %= MOD;
            }
        }
        return dp[l];
    }
};

/*
    在一连串的数字中，比如有3个2，那我可以选择1 + 2， 2 + 1， 3，因此就是爬上第三级楼梯
    而若是连续的4个2，因为2最多为a、b、c，也就是3，因此我们只看后3个，也就是它最多迈3步
*/
