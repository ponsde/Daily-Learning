#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int maxDotProduct(vector<int>& nums1, vector<int>& nums2) {
        int l1 = nums1.size();
        int l2 = nums2.size();
        vector<vector<int>> dp(l1 + 1, vector<int>(l2 + 1));
        int mx = INT_MIN;
        for (int i = 0; i < l1; ++i)
        {
            for (int j = 0; j < l2; ++j)
            {

                dp[i + 1][j + 1] = max({dp[i][j] + nums1[i] * nums2[j], dp[i + 1][j], dp[i][j + 1]});
                mx = max(mx, nums1[i] * nums2[j]);
            }
        }
        return dp[l1][l2] == 0 ? mx : dp[l1][l2];
    }
};

/*
 * wc，自己做出来的，真强
 * 对于第i、j个字符，如果都选，那么就是前i - 1，j - 1个中最大的点积加上该点积
 * 如果有一个不选，那么就是就是看看上左那些中的最大值
 */


class Solution {
public:
    int maxDotProduct(vector<int>& nums1, vector<int>& nums2) {
        int l1 = nums1.size();
        int l2 = nums2.size();
        vector<vector<int>> dp(l1 + 1, vector<int>(l2 + 1, INT_MIN / 2));

        for (int i = 0; i < l1; ++i)
        {
            for (int j = 0; j < l2; ++j)
            {

                dp[i + 1][j + 1] = max({nums1[i] * nums2[j], dp[i][j] + nums1[i] * nums2[j], dp[i + 1][j], dp[i][j + 1]});

            }
        }
        return dp[l1][l2];
    }
};

/*
 * 在上面想了挺久的如果最优解为负数的情况，然后采用了mx
 * 在这里，最优解的情况可以是不选前面，直接是nums1[i] * nums2[j]，也就是不管前面只看这个
 * 因此我们直接初始化为INT_MIN，此时虽然最开始很多INT_MIN，带随着推荐，INT_MIN会被覆盖，等到下一行就正常了
