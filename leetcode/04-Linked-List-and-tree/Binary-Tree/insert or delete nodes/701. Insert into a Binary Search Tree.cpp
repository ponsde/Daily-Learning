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
    TreeNode *insertIntoBST(TreeNode *root, int val)
    {
        TreeNode *pre = nullptr;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
                return new TreeNode(val);
            if (node->val < val)
            {
                node->right = self(self, node->right);
            }
            if (node->val > val)
            {
                node->left = self(self, node->left);
            }
            return node;
        };

        return dfs(dfs, root);
    }
};

/*
    想复杂了，不想复杂正常做就简单的
    二叉搜索树，如果历遍到空节点了，就说明找到插入位置了
    若是大于该节点，那么向右走，若是小于该节点，那么向左走
    这样就能符合二叉搜索树，所以不用很复杂的想什么乱七八糟的
*/