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
    bool hasPathSum(TreeNode *root, int targetSum)
    {
        bool ans = false;
        function<void(TreeNode *, int)> dfs = [&](TreeNode *node, int sum)
        {
            if (ans == true)
            {
                return;
            }
            if (!node)
            {
                return;
            }
            sum += node->val;
            if (sum == targetSum && !node->left && !node->right)
            {
                ans = true;
                return;
            }
            dfs(node->left, sum);
            dfs(node->right, sum);
        };
        dfs(root, 0);
        return ans;
    }
};

// 不太好判断sum而提前剪枝，node的值有正有负的，应该能得但我懒得想...