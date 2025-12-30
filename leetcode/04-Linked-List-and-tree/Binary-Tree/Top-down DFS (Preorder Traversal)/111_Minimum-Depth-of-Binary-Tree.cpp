#include <functional>
#include <climits>

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
    int minDepth(TreeNode *root)
    {
        int ans = INT_MAX;
        function<void(TreeNode *, int)> dfs = [&](TreeNode *node, int length)
        {
            if (!node)
            {
                return;
            }
            if (length >= ans)
            {
                return;
            }
            if (!node->left && !node->right)
            {
                ans = min(ans, length);
            }
            dfs(node->left, length + 1);
            dfs(node->right, length + 1);
        };
        dfs(root, 1);
        return ans == INT_MAX ? 0 : ans;
    }
};

// 跟104差不多，但这好提前剪枝