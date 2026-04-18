#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    vector<int> largestDivisibleSubset(vector<int> &nums)
    {
        int l = nums.size();
        vector<vector<int>> dp(l);
        sort(nums.begin(), nums.end());
        vector<int> ans;
        int mx_len = 0;
        for (int i = 0; i < l; ++i)
        {
            int len = 0;
            for (int j = 0; j < i; ++j)
            {
                if (nums[i] % nums[j] != 0)
                    continue;
                if (dp[j].size() > len)
                {
                    len = dp[j].size();
                    dp[i] = dp[j];
                }
            }
            dp[i].push_back(nums[i]);
            if (dp[i].size() > mx_len)
            {
                mx_len = dp[i].size();
                ans = dp[i];
            }
        }
        return ans;
    }
};

/*
    我还以为会过不了
    要求是集合里的每一个数字都能被集合里的其他数字整除，所以他们互为因数嘛
    那么我排序后从小打到历遍，如果较大的数能被较小的数整除，那么就把较小的数的集合复制一份到较大的数的集合里，并把较大的数加入到集合里
    最后返回最长的集合就行了
*/