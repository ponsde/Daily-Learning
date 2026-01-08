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
    bool btreeGameWinningMove(TreeNode *root, int n, int x)
    {
        int l_sum;
        int r_sum;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return 0;
            }
            int l_s = self(self, node->left);
            int r_s = self(self, node->right);
            if (node->val == x)
            {
                l_sum = l_s;
                r_sum = r_s;
            }
            return l_s + r_s + 1;
        };
        dfs(dfs, root);
        return 2 * max({l_sum, r_sum, n - 1 - l_sum - r_sum}) > n;
    }
};

// 重做重做好烦，这机房破鼠标
