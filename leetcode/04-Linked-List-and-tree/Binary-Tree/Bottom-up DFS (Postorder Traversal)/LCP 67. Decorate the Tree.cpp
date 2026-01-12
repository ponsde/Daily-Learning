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
    TreeNode *expandBinaryTree(TreeNode *root)
    {
        auto insert = [&](TreeNode *fa)
        {
            if (fa->left && fa->left->val != -1)
            {
                fa->left = new TreeNode(-1, fa->left, nullptr);
            }
            if (fa->right && fa->right->val != -1)
            {
                fa->right = new TreeNode(-1, nullptr, fa->right);
            }
        };
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return -1;
            }
            auto v_l = self(self, node->left);
            auto v_r = self(self, node->right);
            if (v_l != -1 || v_r != -1)
            {
                insert(node);
            }
            return node->val;
        };
        dfs(dfs, root);
        return root;
    }
};

// 当发现某个需要插入装饰时插入即可