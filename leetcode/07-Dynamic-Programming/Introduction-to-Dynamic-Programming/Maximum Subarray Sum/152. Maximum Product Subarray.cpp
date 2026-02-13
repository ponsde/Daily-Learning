#include <bits/stdc++.h>

using namespace std;


class Solution {
public:
    int maxProduct(vector<int>& nums) {
        int ans = INT_MIN;
        int fmin = 1;
        int fmax = 1;
        int l = nums.size();
        for (int i = 0; i < l; ++i)
        {
            int new_fmax = max({fmax * nums[i], fmin * nums[i], nums[i]});
            int new_fmin = min({fmax * nums[i], fmin * nums[i], nums[i]});
            fmax = new_fmax;
            fmin = new_fmin;
            ans = max(ans,  fmax);
        }
        return ans;
    }
};


/*
    对于第 i 个元素，若它大于零，为了使他最大，因此找前 i - 1个元素中的最大值
    若它小于零，为了使他最大，因此找前 i - 1 个元素中的最小值
    因此，我们通过维护前 i - 1的最小值和最大值来进行动态规划
    
*/