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
    int maxDepth(TreeNode *root)
    {
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return 0;
            }
            int l_len = self(self, node->left);
            int r_len = self(self, node->right);
            return max(l_len, r_len) + 1;
        };
        return dfs(dfs, root);
    }
};

// 自下而上