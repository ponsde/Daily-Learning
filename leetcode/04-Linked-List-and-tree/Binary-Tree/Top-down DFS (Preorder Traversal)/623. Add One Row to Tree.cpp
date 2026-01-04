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
    TreeNode *addOneRow(TreeNode *root, int val, int depth)
    {
        function<void(TreeNode *, int)> dfs = [&](TreeNode *node, int ly)
        {
            if (!node)
            {
                return;
            }
            if (ly == depth)
            {
                auto lt = node->left;
                auto rt = node->right;
                node->left = new TreeNode(val, lt, nullptr);
                node->right = new TreeNode(val, nullptr, rt);
                return;
            }
            dfs(node->left, ly + 1);
            dfs(node->right, ly + 1);
        };
        if (depth == 1)
        {
            auto t = new TreeNode(val, root, nullptr);
            return t;
        }
        dfs(root, 2);
        return root;
    }
};

// 注意depth为1时，特殊处理下