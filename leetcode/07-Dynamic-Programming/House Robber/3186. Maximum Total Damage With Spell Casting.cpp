#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    long long maximumTotalDamage(vector<int> &power)
    {
        int mx = *max_element(power.begin(), power.end());
        unordered_map<int, int> hash;
        for (auto x : power)
        {
            hash[x]++;
        }
        vector<int> uni;
        for (auto &p : hash)
        {
            uni.push_back(p.first);
        }
        sort(uni.begin(), uni.end());
        int l = uni.size();
        vector<long long> dp(l);
        for (int i = 0; i < l; ++i)
        {
            int m = uni[i];
            int it = lower_bound(uni.begin(), uni.end(), m - 2) - uni.begin() - 1;
            long long curr_damage = 1LL * m * hash[m];
            long long pre = i == 0 ? 0 : dp[i - 1];
            dp[i] = max(pre, (it >= 0 ? dp[it] : 0) + curr_damage);
        }
        return dp[l - 1];
    }
};

/*
    因为数据量很大，因此用离散的方法而不是直接大数组
    dp[i]表示前i个数能造成的最大伤害
    为什么只是dp[i - 1]而少了dp[i - 2]?因为若是以dp[i - 1]来进行，dp数组整体式上升的
    因此dp[i - 1]已经包含了dp[i - 2]的可能性
    如果it为-1，就说明如果选了这个，并没有先前的选的，当前的curr_damage新的开始
*/