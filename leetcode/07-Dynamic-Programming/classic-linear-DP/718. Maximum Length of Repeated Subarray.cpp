#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int findLength(vector<int>& nums1, vector<int>& nums2) {
        int l1 = nums1.size();
        int l2 = nums2.size();
        vector<vector<int>> dp(l1 + 1, vector<int>(l2 + 1));
        int ans = INT_MIN;
        for (int i = 0; i < l1; ++i)
        {
            for (int j = 0; j < l2; ++j)
            {
                if (nums1[i] == nums2[j])
                {
                    dp[i + 1][j + 1] = dp[i][j] + 1;
                    ans = max(ans, dp[i + 1][j + 1]);
                }
                else
                {
                    dp[i + 1][j + 1] = 0;
                }
            }
        }
        return ans;
    }
};

/*
 * 嘶，突然脑子灵机一动就出来了，这算意识流吗
 * 因为对于最大的连续子序列，若是遇到不同的就要断开
 * 那么通过维护一个ans，收集每一段连续的子序列中最大的
 * 那么相同的i、j就直接max即可，那么要注意的就是需要断开的
 * 当到了需要断开的地方，把i、j置为0，代表这里断开了，不用再看它的左、上，因为上面的if会历遍到的
 *
 * 发现其实else里面的删了也行，因为令他为0的时候它本来就是0
