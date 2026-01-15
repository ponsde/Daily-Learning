#include <algorithm>

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
    int longestUnivaluePath(TreeNode *root)
    {
        int ans = 0;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return 0;
            }
            int len_l = self(self, node->left);
            int len_r = self(self, node->right);
            if (node->left && node->val != node->left->val)
            {
                len_l = 0;
            }
            if (node->right && node->val != node->right->val)
            {
                len_r = 0;
            }
            ans = max(ans, len_l + len_r);
            return max(len_l, len_r) + 1;
        };
        dfs(dfs, root);
        return ans;
    }
};

/*
    通过node->val与左右子节点的val进行比较，决定是否将len_l或len_r置0，也就是判断线路要不要在这里断开
*/