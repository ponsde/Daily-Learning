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
    TreeNode *subtreeWithAllDeepest(TreeNode *root)
    {
        auto dfs = [&](auto &&self, TreeNode *node) -> pair<int, TreeNode *>
        {
            if (!node)
            {
                return {0, nullptr};
            }
            auto [len_l, l_node] = self(self, node->left);
            auto [len_r, r_node] = self(self, node->right);
            int len;
            TreeNode *k;
            if (len_l == len_r)
            {
                len = len_l;
                k = node;
            }
            else
            {
                len = max(len_l, len_r);
                k = len_l > len_r ? l_node : r_node;
            }
            return {len + 1, k};
        };
        auto [_, ans] = dfs(dfs, root);
        return ans;
    }
};

/*
    不算难，通过len来记录到root的深度，题目要求返回最深子节点的最近公共祖先
    所以当左右子树深度相等时，返回当前节点，否则返回深度较大的子树的结果节点
*/