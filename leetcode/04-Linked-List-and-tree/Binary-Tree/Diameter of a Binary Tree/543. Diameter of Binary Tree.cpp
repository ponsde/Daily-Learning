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
    int diameterOfBinaryTree(TreeNode *root)
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
            ans = max(ans, len_l + len_r);
            return max(len_l, len_r) + 1;
        };
        dfs(dfs, root);
        return ans;
    }
};

/*
    简单的，计算每棵树的左右子树的深度，然后返回最大的哪个，然后每个节点都进行一次判断
*/