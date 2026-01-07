#include <utility>
#include <climits>
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
    int maxAncestorDiff(TreeNode *root)
    {
        int ans = 0;
        auto dfs = [&](auto &&self, TreeNode *node) -> pair<int, int>
        {
            if (!node)
            {
                return {INT_MIN, INT_MAX};
            }
            if (!node->left && !node->right)
            {
                return {node->val, node->val};
            }
            auto [l_mx, l_mn] = self(self, node->left);
            auto [r_mx, r_mn] = self(self, node->right);
            int mx = max(l_mx, r_mx);
            int mn = min(l_mn, r_mn);
            ans = max({ans, abs(node->val - mx), abs(node->val - mn)});
            return {max(node->val, mx), min(node->val, mn)};
        };
        dfs(dfs, root);
        return ans;
    }
};

// 虽然不是很优雅吧