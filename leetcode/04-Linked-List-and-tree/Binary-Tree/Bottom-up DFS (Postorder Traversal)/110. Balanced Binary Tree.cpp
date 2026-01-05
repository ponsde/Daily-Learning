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
    bool isBalanced(TreeNode *root)
    {
        if (!root)
        {
            return true;
        }
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return 0;
            }
            int ld = self(self, node->left);
            int rd = self(self, node->right);
            return max(ld, rd) + 1;
        };
        return (abs(dfs(dfs, root->left) - dfs(dfs, root->right)) <= 1) && isBalanced(root->left) && isBalanced(root->right);
    }
};

// dfs找到每个左右子树最大的深度，然后判断每个节点的左右子树深度差是否小于等于1，同时递归判断左右子树是否平衡