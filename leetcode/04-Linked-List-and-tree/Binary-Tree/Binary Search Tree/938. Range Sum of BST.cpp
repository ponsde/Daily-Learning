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
    int rangeSumBST(TreeNode *root, int low, int high)
    {
        int ans = 0;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return;
            }
            if (node->val <= high && node->val >= low)
            {
                ans += node->val;
            }
            if (node->left && node->val > low)
            {
                self(self, node->left);
            }
            if (node->right && node->val < high)
            {
                self(self, node->right);
            }
        };
        dfs(dfs, root);
        return ans;
    }
};

// 二叉搜索树不存在相同的值，因此不用>=，<=也行