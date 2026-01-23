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
    TreeNode *searchBST(TreeNode *root, int val)
    {
        TreeNode *ans;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return false;
            }
            if (node->val == val)
            {
                ans = node;
                return true;
            }
            return self(self, node->left) || self(self, node->right);
        };
        if (dfs(dfs, root))
        {
            return ans;
        }
        return nullptr;
    }
};

// 简单的,通过return判断是否找到来提前返回剪枝

class Solution
{
public:
    TreeNode *searchBST(TreeNode *root, int val)
    {
        TreeNode *ans;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return false;
            }
            if (node->val == val)
            {
                ans = node;
                return true;
            }
            if (node->val < val)
            {
                return self(self, node->right);
            }
            return self(self, node->left);
        };
        if (dfs(dfs, root))
        {
            return ans;
        }
        return nullptr;
    }
};

// 不好，忘记用上二叉搜索树的性质了，换成这个更好