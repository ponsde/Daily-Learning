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
    int longestZigZag(TreeNode *root)
    {
        int ans = 0;
        auto dfs = [&](auto &&self, TreeNode *node) -> pair<int, int>
        {
            if (!node)
            {
                return {0, 0};
            }
            auto [_, left_right] = self(self, node->left);
            auto [right_left, _] = self(self, node->right);
            int n_left = 0;
            int n_right = 0;
            if (node->left)
            {
                n_left = 1 + left_right;
            }
            if (node->right)
            {
                n_right = 1 + right_left;
            }
            ans = max({ans, n_left, n_right});
            return {n_left, n_right};
        };
        dfs(dfs, root);
        return ans;
    }
};

// 再做一遍，这从低到上不太好想...