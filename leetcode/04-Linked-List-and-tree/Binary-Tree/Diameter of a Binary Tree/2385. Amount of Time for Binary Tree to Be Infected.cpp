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
    int amountOfTime(TreeNode *root, int start)
    {
        int ans = 0;
        auto dfs = [&](auto &&self, TreeNode *node) -> pair<bool, int>
        {
            if (!node)
            {
                return {false, 0};
            }
            if (node->val == start)
            {
                auto [_, l_t] = self(self, node->left);
                auto [_, r_t] = self(self, node->right);
                ans = max(ans, max(l_t, r_t));
                return {true, 1};
            }
            auto [bl, l_len] = self(self, node->left);
            auto [br, r_len] = self(self, node->right);
            if (bl || br)
            {
                ans = max(ans, l_len + r_len);
                return {true, (bl ? l_len : r_len) + 1};
            }
            return {false, max(l_len, r_len) + 1};
        };
        dfs(dfs, root);
        return ans;
    }
};

/*
    需要找到一条以start节点为终点的最大直径，因此在找到start时，以start为根先找一次
    再在以start为叶子再找一次
*/