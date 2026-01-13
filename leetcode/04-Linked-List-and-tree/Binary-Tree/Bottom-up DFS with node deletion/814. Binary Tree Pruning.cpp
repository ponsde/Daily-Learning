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
    TreeNode *pruneTree(TreeNode *root)
    {
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return false;
            }
            bool bl = self(self, node->left);
            bool br = self(self, node->right);
            if (!bl)
            {
                node->left = nullptr;
            }
            if (!br)
            {
                node->right = nullptr;
            }
            return node->val == 1 || bl || br;
        };
        dfs(dfs, root);
        if (root && root->val == 0 && !root->left && !root->right)
        {
            return nullptr;
        }
        return root;
    }
};

// 在dfs中通过||来判断是否有一个1，若有则保留
// 在 return 中进行判断
// 最后检查root是否为0的叶子节点，若是则返回nullptr