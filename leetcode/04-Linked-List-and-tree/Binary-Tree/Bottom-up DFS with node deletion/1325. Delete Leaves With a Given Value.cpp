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
    TreeNode *removeLeafNodes(TreeNode *root, int target)
    {
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return false;
            }
            if (!node->left && !node->right)
            {
                if (node->val == target)
                {
                    return true;
                }
                return false;
            }
            bool bl = self(self, node->left);
            bool br = self(self, node->right);
            node->left = bl ? nullptr : node->left;
            node->right = br ? nullptr : node->right;
            if (node->val == target && !node->left && !node->right)
            {
                return true;
            }
            return false;
        };
        dfs(dfs, root);
        if (root && root->val == target && !root->left && !root->right)
        {
            return nullptr;
        }
        return root;
    }
};

// 差不多，当删除了子节点后在检查自己是否为新的符合的子节点，如果是返回true，不是就返回false
// 最后在检查root是否需要删