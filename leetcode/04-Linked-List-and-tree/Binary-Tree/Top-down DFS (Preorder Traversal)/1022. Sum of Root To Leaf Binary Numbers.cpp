#include <functional>

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
    int sumRootToLeaf(TreeNode *root)
    {
        int sum = 0;
        function<void(TreeNode *, int)> dfs = [&](TreeNode *node, int pre_sum)
        {
            if (!node)
            {
                return;
            }
            pre_sum <<= 1;
            pre_sum |= node->val;
            if (!node->left && !node->right)
            {
                sum += pre_sum;
                return;
            }
            dfs(node->left, pre_sum);
            dfs(node->right, pre_sum);
        };
        dfs(root, 0);
        return sum;
    }
};

// 简单的