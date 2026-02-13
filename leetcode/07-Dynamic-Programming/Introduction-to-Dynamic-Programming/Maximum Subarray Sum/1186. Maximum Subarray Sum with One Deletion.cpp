#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int maximumSum(vector<int>& arr) {
        int l = arr.size();
        int ans = INT_MIN;
        vector<vector<int>> dp(l + 1, vector<int>(2));
        dp[0][0] = INT_MIN / 2;
        dp[0][1] = INT_MIN / 2;
        for (int i = 0; i < l; ++i)
        {
            dp[i + 1][0] = max(dp[i][0], 0) + arr[i];
            dp[i + 1][1] = max(dp[i][1] + arr[i], dp[i][0]);
            ans = max({ans, dp[i + 1][0], dp[i + 1][1]});
            
        }
        return ans;
    }
};

/*
    对于不删除，那么就是正常的max(dp[i], 0) + arr[i];
    如果要删除，根据前面是否有删除来判断之后的选择
    如果前面删除过了，那么只能继续加上当前的数
    如果前面没有删除过，那么选择删除当前的数
    dp[0][0]和dp[0][1]为不在序列中的情况，就是dp是从1开始的，0为不在序列中的情况
    那么需要初始化为一个很小的数，防止被选中
*/