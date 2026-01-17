#include <unordered_map>

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
    int pseudoPalindromicPaths(TreeNode *root)
    {
        int ans = 0;
        int unique = 0;
        unordered_map<int, int> hash;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return;
            }
            hash[node->val]++;
            if (hash[node->val] % 2 == 1)
            {
                unique++;
            }
            else
            {
                unique--;
            }
            if (!node->left && !node->right)
            {
                if (unique == 1 || unique == 0)
                {
                    ans++;
                }
            }
            else
            {
                self(self, node->left);
                self(self, node->right);
            }
            hash[node->val]--;
            if (hash[node->val] % 2 == 1)
            {
                unique++;
            }
            else
            {
                unique--;
            }
        };
        dfs(dfs, root);
        return ans;
    }
};

// 判断是否存在伪回文路径，通过记录路径上奇数次出现的节点值个数来判断