#include <bits/stdc++.h>

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
    int minDiffInBST(TreeNode *root)
    {
        int ans = INT_MAX;
        int pre = INT_MIN / 2;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return;
            }
            self(self, node->left);
            ans = min(ans, node->val - pre);
            pre = node->val;
            self(self, node->right);
        };
        dfs(dfs, root);
        return ans;
    }
};

// 783同530