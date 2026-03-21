#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    TreeNode* sortedArrayToBST(vector<int>& nums) {
        auto dfs = [&](auto&& self, int left, int right) -> TreeNode*
        {
            if (left == right) return nullptr;
            int m = left + (right - left) / 2;
            return new TreeNode(nums[m], self(self, left, m), self(self, m + 1, right));
        };
        return dfs(dfs, 0, nums.size());
    }
};

/*
 * 因为是平衡，就尽量取中间
 * 然后分为了左右两个子数组，接着继续即可
