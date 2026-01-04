#include <vector>

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
    vector<int> flipMatchVoyage(TreeNode *root, vector<int> &voyage)
    {
        vector<int> ans;
        int idx = 0;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return true;
            }
            if (node->val != voyage[idx] || (node->left && node->right && node->left->val != voyage[idx + 1] && node->right->val != voyage[idx + 1]))
            {
                return false;
            }
            idx++;
            if (node->left && node->left->val != voyage[idx])
            {
                ans.push_back(node->val);
                bool rl = self(self, node->right);
                bool rr = self(self, node->left);
                return rl && rr;
            }
            else
            {
                bool nl = self(self, node->left);
                bool nr = self(self, node->right);
                return nl && nr;
            }
        };
        bool check = dfs(dfs, root);
        if (!check)
        {
            return {-1};
        }
        return ans;
    }
};

// 在正常前序历遍时，发现都不符合，则需要返回-1，若左不符合右符合，则反转
// 挺有意思的题目，再做一遍