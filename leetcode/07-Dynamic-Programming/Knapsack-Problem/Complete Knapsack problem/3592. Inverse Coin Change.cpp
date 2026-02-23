#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    vector<int> findCoins(vector<int>& numWays) {
        int l = numWays.size();
        vector<int> dp(l + 1);
        vector<int> ans;
        dp[0] = 1;
        for (int i = 1; i <= l; ++i)
        {
            int m = numWays[i - 1] - dp[i];
            if (m == 0) continue;
            if (m == 1)
            {
                ans.push_back(i);
                for (int j = i; j <= l; ++j)
                {
                    dp[j] += dp[j - i];
                }
            }
            else
            {
                return {};
            }

        }
        return ans;
    }
};

/*
    完全背包的逆过程
    从小到大历遍，对于第i个金额对应的方案数，若是跟dp的方案数相差1，说明这个金额是独立存在的
    那么把它加到答案里然后根据这个金额再历遍dpk数组更新方案数
    然后继续往后走，若是遇到dp的方案数更多或者dp的方案数跟目标相差2以上，那么说明达不到这个金额了，直接返回空数组
*/