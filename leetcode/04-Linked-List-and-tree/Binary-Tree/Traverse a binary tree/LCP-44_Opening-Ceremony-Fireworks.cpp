#include <unordered_set>
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
    int numColor(TreeNode *root)
    {
        unordered_set<int> s;
        function<void(TreeNode *)> dfs = [&](TreeNode *node)
        {
            if (node)
            {
                s.insert(node->val);
                dfs(node->left);
                dfs(node->right);
            }
        };
        dfs(root);
        return s.size();
    }
};

// 记得lambda表达式要加上作为递归时，要function<>声明类型