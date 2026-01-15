#include <algorithm>
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
    int maxPathSum(TreeNode *root)
    {
        int ans = INT_MIN;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return 0;
            }
            int l_sum = self(self, node->left);
            int r_sum = self(self, node->right);
            ans = max(ans, l_sum + r_sum + node->val);
            return max((max(l_sum, r_sum) + node->val), 0);
        };
        dfs(dfs, root);
        return ans;
    }
};

/*
    因为当左或右中某个的最大和为负值时，可以选择不走，因此当左或右的最大和小于0时，返回0
*/