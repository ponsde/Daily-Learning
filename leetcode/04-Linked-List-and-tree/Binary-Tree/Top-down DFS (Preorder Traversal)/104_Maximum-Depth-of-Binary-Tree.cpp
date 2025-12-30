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
    int maxDepth(TreeNode *root)
    {
        int ans = INT_MIN;
        function<void(TreeNode *, int)> dfs = [&](TreeNode *node, int length)
        {
            if (!node)
            {
                return;
            }
            if (length > ans)
            {
                ans = length;
            }
            dfs(node->left, length + 1);
            dfs(node->right, length + 1);
        };
        dfs(root, 1);
        return ans == INT_MIN ? 0 : ans;
    }
};

// 需要注意的是当ans为INT_MIN，也就是root为nullptr需要返回0的情况