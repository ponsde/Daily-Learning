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
    int findTilt(TreeNode *root)
    {
        int sum = 0;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return 0;
            }
            int lx = self(self, node->left);
            int lr = self(self, node->right);
            sum += abs(lx - lr);
            return node->val + lx + lr;
        };
        dfs(dfs, root);
        return sum;
    }
};

// 要求是算出斜度，返回斜度和而不是根节点最终的斜度