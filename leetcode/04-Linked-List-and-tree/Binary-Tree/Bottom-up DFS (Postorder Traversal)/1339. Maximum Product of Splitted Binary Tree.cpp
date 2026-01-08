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
    int maxProduct(TreeNode *root)
    {
        int sum = 0;
        int MOD = 1000000007;
        auto pre_sum = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return;
            }
            sum += node->val;
            self(self, node->left);
            self(self, node->right);
        };
        long long ans = 0;
        auto dfs = [&](auto &&self, TreeNode *node) -> long long
        {
            if (!node)
            {
                return 0;
            }
            long long s_l = self(self, node->left);
            long long s_r = self(self, node->right);
            long long k = s_l + s_r + node->val;
            ans = max(ans, (sum - k) * k);
            return k;
        };
        pre_sum(pre_sum, root);
        dfs(dfs, root);
        return ans % MOD;
    }
};

// 注意别再max那就取模了，比如取模2,8和7，在max那里出现的结果是7比8大