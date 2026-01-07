#include <utility>

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
    int averageOfSubtree(TreeNode *root)
    {
        int ans = 0;
        auto dfs = [&](auto &&self, TreeNode *node) -> pair<int, int>
        {
            if (!node)
            {
                return {0, 0};
            }
            auto [sum_l, cnt_l] = self(self, node->left);
            auto [sum_r, cnt_r] = self(self, node->right);
            int m = sum_l + sum_r + node->val;
            int n = cnt_l + cnt_r + 1;
            if (m / n == node->val)
            {
                ans++;
            }
            return {m, n};
        };
        dfs(dfs, root);
        return ans;
    }
};

// 还是要先相信自己，想用pair那就用pair