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
    int sumOfLeftLeaves(TreeNode *root)
    {
        int sum = 0;
        function<void(TreeNode *)> dfs = [&](TreeNode *node)
        {
            if (node)
            {
                if (node->left && !node->left->left && !node->left->right)
                {
                    sum += node->left->val;
                }
                dfs(node->left);
                dfs(node->right);
            }
        };
        dfs(root);
        return sum;
    }
};

// 当该节点的左节点为叶子节点时，将该节点的值加入sum