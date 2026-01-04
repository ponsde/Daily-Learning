#include <algorithm>
#include <climits>

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
    int minDepth(TreeNode *root)
    {
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return INT_MAX;
            }
            if (!node->left && !node->right)
            {
                return 1;
            }
            int l_d = self(self, node->left);
            int r_d = self(self, node->right);
            return min(l_d, r_d) + 1;
        };
        int k = dfs(dfs, root);
        return k == INT_MAX ? 0 : k;
    }
};

// 想的是将空节点的影响忽略掉，通过INT_MAX来实现
