/*
你有一架天平和N个砝码,这N个砝码重量依次是W1,W2,...,WN。你可以选择任意个砝码放在天平的左边或右边(也可以不放)，
请问能否使天平达到平衡。
*/

#include <bits/stdc++.h>

using namespace std;

int main(void)
{
    int n;
    cin >> n;
    int sum = 0;
    vector<int> vec;
    for (int i = 0; i < n; ++i)
    {
        int a;
        cin >> a;
        sum += a;
        vec.push_back(a);
    }
    vector<int> dp(sum + 1);
    int cur_mx = 0;
    for (auto x : vec)
    {
        cur_mx += x;
        vector<int> new_dp = dp;
        for (int i = 0; i <= cur_mx; ++i)
        {
            if (!dp[i])
            {
                continue;
            }
            new_dp[i + x] |= 1;
            new_dp[abs(i - x)] |= 1;
        }
        new_dp[x] |= 1;
        dp = new_dp;
    }
    int ans = 0;
    for (int i = 0; i <= sum; ++i)
    {
        if (i == 0)
        {
            continue;
        }
        if (dp[i] > 0)
        {
            ans++;
        }
    }
    cout << ans << '\n';
}