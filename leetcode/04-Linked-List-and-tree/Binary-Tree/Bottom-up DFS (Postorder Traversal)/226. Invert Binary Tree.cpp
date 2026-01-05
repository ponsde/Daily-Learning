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
    TreeNode *invertTree(TreeNode *root)
    {
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return;
            }
            TreeNode *nl = node->left;
            TreeNode *nr = node->right;
            node->left = nr;
            node->right = nl;
            self(self, node->left);
            self(self, node->right);
        };
        dfs(dfs, root);
        return root;
    }
};

// 简单的