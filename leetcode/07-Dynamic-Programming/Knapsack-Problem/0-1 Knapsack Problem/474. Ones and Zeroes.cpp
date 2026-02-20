#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int findMaxForm(vector<string>& strs, int m, int n) {
        int l = strs.size();
        vector<vector<vector<int>>> dp(l + 1, vector<vector<int>>(m + 1, vector<int>(n + 1)));
        for (int i = 0; i < l; ++i)
        {
            int cnt0 = 0;
            int cnt1 = 0;
            for (auto x : strs[i])
            {
                if (x == '0')
                {
                    cnt0++;
                }
                else
                {
                    cnt1++;
                }
            }
            
            for (int j = 0; j <= m; ++j)
            {
                for (int k = 0; k <= n; ++k)
                {
                    dp[i + 1][j][k] = dp[i][j][k];
                    if (j >= cnt0 && k >= cnt1 && !strs[i].empty())
                    {
                        dp[i + 1][j][k] = max(dp[i + 1][j][k], dp[i][j - cnt0][k - cnt1] + 1);
                    }
                }
            }
        }
        int ans = INT_MIN;
        for (int i = 0; i <= m; ++i)
        {
            for (int j = 0; j <= n; ++j)
            {
                ans = max(ans, dp[l][i][j]);
            }
        }
        return ans;
    }
};


/*
    我还以为会超时结果没有
    对于每一个元素，都有选和不选，若是选，那么就要加上对应的1、0的数量
    因此维度为m、n，记录1、0的数量
*/

class Solution {
public:
    int findMaxForm(vector<string>& strs, int m, int n) {
        int l = strs.size();
        vector<vector<int>> dp(m + 1, vector<int>(n + 1));
        for (int i = 0; i < l; ++i)
        {
            if (strs[i].empty()) continue;
            int cnt0 = 0;
            int cnt1 = 0;
            for (auto x : strs[i])
            {
                if (x == '0')
                {
                    cnt0++;
                }
                else
                {
                    cnt1++;
                }
            }
            
            for (int j = m; j >= 0; --j)
            {
                for (int k = n; k >= 0; --k)
                {
                    if (j >= cnt0 && k >= cnt1)
                    {
                        dp[j][k] = max(dp[j][k], dp[j - cnt0][k - cnt1] + 1);
                    }
                }
            }
        }
        int ans = INT_MIN;
        for (int i = 0; i <= m; ++i)
        {
            for (int j = 0; j <= n; ++j)
            {
                ans = max(ans, dp[i][j]);
            }
        }
        return ans;
    }
};

/*
    换成2维的速度快起来了
    注意从后往前历遍，避免一个字符串多次使用
*/