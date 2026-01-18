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
    TreeNode *lcaDeepestLeaves(TreeNode *root)
    {
        auto dfs = [&](auto &&self, TreeNode *node) -> pair<int, TreeNode *>
        {
            if (!node)
            {
                return {0, nullptr};
            }
            auto [l_len, l_node] = self(self, node->left);
            auto [r_len, r_node] = self(self, node->right);
            if (l_len == r_len)
            {
                return {l_len + 1, node};
            }
            return {max(l_len, r_len) + 1, l_len > r_len ? l_node : r_node};
        };
        auto [_, ans] = dfs(dfs, root);
        return ans;
    }
};

/*
    我感觉我现在是傻子了，我上次做能做出来这次就不行了
    通过int和TreeNode*的pair，若是左右深度相同，则返回当前的节点，若不同，则返回深度较大的节点
*/