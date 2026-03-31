#include <bits/stdc++.h>

using namespace std;

struct TreeNode
{
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};

class Solution
{
public:
    TreeNode *constructMaximumBinaryTree(vector<int> &nums)
    {
        auto dfs = [&](auto &&self, int left, int right) -> TreeNode *
        {
            if (left == right)
                return nullptr;
            int idx = max_element(nums.begin() + left, nums.begin() + right) - nums.begin();
            return new TreeNode(nums[idx], self(self, left, idx), self(self, idx + 1, right));
        };
        return dfs(dfs, 0, nums.size());
    }
};

/*
 * 按照题意弄就行，每一个子数组按照要求弄即可
 */