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
    TreeNode *balanceBST(TreeNode *root)
    {
        vector<int> vec;
        auto fill = [&](auto &&self, TreeNode *node)
        {
            if (!node)
                return;
            self(self, node->left);
            vec.push_back(node->val);
            self(self, node->right);
        };
        fill(fill, root);
        auto dfs = [&](auto &&self, int left, int right) -> TreeNode *
        {
            if (left == right)
                return nullptr;
            int m = left + (right - left) / 2;
            return new TreeNode(vec[m], self(self, left, m), self(self, m + 1, right));
        };
        return dfs(dfs, 0, vec.size());
    }
};

/*
    先将二叉搜索树拿出来，然后尽量取中间
    如果直接原本反转的话...好难想不出来

*/