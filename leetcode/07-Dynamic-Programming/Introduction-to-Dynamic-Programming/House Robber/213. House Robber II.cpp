#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int rob(vector<int> &nums)
    {
        int l = nums.size();
        if (l == 1)
        {
            return nums[0];
        }
        vector<int> dp1(l + 1);
        vector<int> dp2(l + 1);
        for (int i = 0; i < l - 1; ++i)
        {
            dp1[i + 2] = max(dp1[i] + nums[i], dp1[i + 1]);
        }
        for (int i = 0; i < l - 1; ++i)
        {
            dp2[i + 2] = max(dp2[i] + nums[i + 1], dp2[i + 1]);
        }
        return max(dp1[l], dp2[l]);
    }
};

/*
    对于环形问题拆成线性问题解决
    若偷了第1家，则最后一家不能同
    若偷了最后1家，则第一家不能偷
*/