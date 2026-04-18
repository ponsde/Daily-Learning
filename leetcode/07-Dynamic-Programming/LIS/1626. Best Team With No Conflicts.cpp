#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int bestTeamScore(vector<int> &scores, vector<int> &ages)
    {
        int l = scores.size();
        vector<int> vec(l);
        iota(vec.begin(), vec.end(), 0);
        auto cmp = [&](const auto &a, const auto &b)
        {
            if (ages[a] == ages[b])
            {
                return scores[a] < scores[b];
            }
            return ages[a] < ages[b];
        };
        sort(vec.begin(), vec.end(), cmp);
        int ans = INT_MIN;
        vector<int> dp(l);
        for (int i = 0; i < l; ++i)
        {
            int di = vec[i];
            for (int j = 0; j < i; ++j)
            {
                int dj = vec[j];
                if (scores[dj] > scores[di])
                    continue;
                dp[i] = max(dp[i], dp[j]);
            }
            dp[i] += scores[di];
            ans = max(ans, dp[i]);
        }
        return ans;
    }
};

/*
    数据量是1000，这样n^2的解法是可以接受的。
    这里不能用g，因为这里不是找最长递增子序列，而是找分数和最大的递增子序列
    然后排序的时候按照年龄排，年龄相同就按照小的在前，这样同龄较大的就会把较小的也选上
*/