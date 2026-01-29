#include <bits/stdc++.h>

using namespace std;

class Solution
{
    int solve(vector<int> &nums1, vector<int> &nums2)
    {
        int max_sum = 0;
        int s = 0;
        int f0 = 0;
        int l = nums1.size();
        for (int i = 0; i < l; ++i)
        {
            s += nums1[i];
            int new_f = max(f0, 0) + nums2[i] - nums1[i];
            f0 = new_f;
            max_sum = max(max_sum, f0);
        }
        return s + max_sum;
    }

public:
    int maximumsSplicedArray(vector<int> &nums1, vector<int> &nums2)
    {
        return max(solve(nums1, nums2), solve(nums2, nums1));
    }
};

/*
    让我们算如果交换一部分后的最大情况，那么转化思维，nums1最大的情况就是
    nums1的和 - nums1交换出去的和 + nums2交换进来的和
    也就是 nums1的和 + (nums2交换进来的和 - nums1交换出去的和)
    也就是 nums1的和 + diff
    nums1是固定的，那么就算交换部分的最大情况，这时候就能正常做了
    用两次算nums1交换和nums2交换的最大情况
*/