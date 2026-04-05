#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int lengthOfLIS(vector<int>& nums) {
        int l = nums.size();
        vector<int> dp(l);
        int ans = 0;
        for (int i = 0; i < l; ++i)
        {
            for (int j = 0; j < i; ++j)
            {
                if (nums[j] < nums[i]) dp[i] = max(dp[i], dp[j]);
            }
            dp[i] += 1;
            ans = max(ans, dp[i]);
        }
        return ans;
    }
};

/*
    最开始的dp
    对于第i个数，遍历前面所有的数，如果前面的数比它小，那么就看dp[j]的值，然后在前面中找个最长的
    然后加上i的位置，也就是1
    但是这样的话时间复杂度是O(n^2)
*/

class Solution {
public:
    int lengthOfLIS(vector<int>& nums) {
        int l = nums.size();
        vector<int> g;
        for (int i = 0; i < l; ++i)
        {
            auto idx = lower_bound(g.begin(), g.end(), nums[i]) - g.begin();
            if (idx == g.size())
            {
                g.push_back(nums[i]);
            }
            else
            {
                g[idx] = nums[i];
            }
        }
        return g.size();
    }
};

/*
    接下来换成这样
    g是递增序列，储存着当前的最长递增子序列
    然后历遍过去，如果当前这个数比g中的数都大，那么就直接放在g的末尾
    如果是在g其中，那么直接替换，这样可以的原因是，如果最后不选他，那长度还是定的因为是替换的前面而不是插入到其中
*/