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
    TreeNode *trimBST(TreeNode *root, int low, int high)
    {
        auto dfs = [&](auto &&self, TreeNode *node) -> TreeNode *
        {
            if (!node)
                return nullptr;
            if (node->val >= low && node->val <= high)
            {
                node->left = self(self, node->left);
                node->right = self(self, node->right);
                return node;
            }
            if (node->val < low)
            {
                return self(self, node->right);
            }

            return self(self, node->left);
        };
        return dfs(dfs, root);
    }
};

/*
    嘿嘿，一遍过，我真厉害
    对于超出范围的节点，如果是小于 low 的节点，那么它的左子树也一定小于 low，所以直接丢弃，继续处理右子树；
    同理，如果是大于 high 的节点，那么它的右子树也一定大于 high，所以直接丢弃，继续处理左子树。
    为了方便处理，可以直接让它们换回自身的子树，这样就不需要额外的变量来保存父节点了。

*/