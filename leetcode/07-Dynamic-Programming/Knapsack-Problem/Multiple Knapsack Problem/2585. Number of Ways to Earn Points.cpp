#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int waysToReachTarget(int target, vector<vector<int>>& types) {
        int MOD = 1000'000'007;
        vector<int> dp(target + 1);
        dp[0] = 1;
        for (auto ti : types)
        {
            int cnt = ti[0];
            int mk = ti[1];
            vector<int> t(target + 1);
            for (int i = 1; i <= cnt; ++i)
            {
                int tm = i * mk;
                for (int j = target; j >= tm; --j)
                {
                    t[j] = (t[j] +dp[j - tm]) % MOD;
                }
            }
            for (int i = 0; i <= target; ++i)
            {
                dp[i] = (dp[i] + t[i]) % MOD;
            }
        }
        return dp[target];
    }
};

/*
    芜湖~，自己独立做出来的
    对于每一个，都可以选i个，0 <= i <= cnt，选i个的总分是i*mk
    此时的每一个可能性要单独考虑，若是直接在dp从大到小，会考虑在该位置选了 0 ~ i-1种
    但实际我们只考虑选了0或1或...或i种，不能混在一起，那么通过一个临时的t
    t记录dp[j - tm]的和，tm是i*mk，那么就是如果选了0~cnt个时，每个各自增加的方法数
    注意这里的i是从1开始的，也就是忽略了不选的方案数，那么不选的方案数在哪？
    在最后的dp[i] = (dp[i] + t[i]) % MOD;中，dp[i]本身就包含了不选的方案数，所以不需要单独考虑
*/

class Solution {
public:
    int waysToReachTarget(int target, vector<vector<int>>& types) {
        int MOD = 1000'000'007;
        vector<int> dp(target + 1);
        dp[0] = 1;
        for (auto ti : types)
        {
            int cnt = ti[0];
            int mk = ti[1];

            for (int j = target; j >= mk; --j)
            {
                for (int k = mk; k <= min(cnt * mk, j); k += mk)
                {
                    dp[j] = (dp[j] + dp[j - k]) % MOD;
                }
            }

        }
        return dp[target];
    }
};

/*
    哇去，灵神的代码，对于每一个从后往前更新
    对于每一个j，思考cnt为0~cnt时，j - cnt*mk ~ j - mk的方案数都要加上，这样到j的都是之前的值
    就不会被当前不同的cnt的方案数混在一起了
    这里依旧考虑了未选择，因为是dp[i] = (dp[i] + dp[i - k]) % MOD，如果是只考虑选择，那么就不能这样了
    goodgood

*/