#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int minimizeTheDifference(vector<vector<int>>& mat, int target) {
        int m = mat.size();
        int n = mat[0].size();
        int mn = 0;
        vector<int> dp(2 * target + 1);
        dp[0] = 1;
        for (int i = 0; i < m; ++i)
        {
            vector<int> t(2 * target + 1);
            int temp = INT_MAX;
            for (int j = 0; j < n; ++j)
            {
                int m = mat[i][j];
                temp = min(m, temp);
                for (int k = 2 * target; k >= m; --k)
                {
                    t[k] |= dp[k - m];
                }
            }
            dp = move(t);
            mn += temp;
        }
        if (dp[target] == 1)
        {
            return 0;
        }
        else
        {
            int i = target - 1;
            int j = target + 1;
            while (i >= 0 && j <= 2 * target)
            {
                if (dp[i] > 0 || dp[j] > 0)
                {
                    return j - target;
                }
                --i;
                ++j;
            }
        }

        return mn - target;
    }
};

/*
    对于每一行选一个，分组背包
    当dp[target] == 1时，说明已经有方案了，此时直接返回0即可
    然后i、j分别向两边扩散，直到找到第一个dp[i] > 0 || dp[j] > 0的情况，此时返回j - target即可
    需要注意的是，若是i < 0或者j > 2 * target了，那么说明最小的方案要大于2 * target
    我们通过维护mn来维护每一行最小值的和
*/