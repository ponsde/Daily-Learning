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
    int sumNumbers(TreeNode *root)
    {
        int ans = 0;
        function<void(TreeNode *, int)> dfs = [&](TreeNode *node, int sum)
        {
            if (!node)
            {
                return;
            }
            sum = sum * 10 + node->val;
            if (!node->left && !node->right)
            {
                ans += sum;
                return;
            }
            dfs(node->left, sum);
            dfs(node->right, sum);
        };
        dfs(root, 0);
        return ans;
    }
};

// 当到叶子节点时把值加到ans即可