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
    bool isUnivalTree(TreeNode *root)
    {
        if (!root)
        {
            return true;
        }
        int val = root->val;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return true;
            }
            if (node->val != val)
            {
                return false;
            }
            return self(self, node->left) && self(self, node->right);
        };
        return dfs(dfs, root);
    }
};

// 简单的
// 优化的点是通过&&，当左子树为false时会直接返回false