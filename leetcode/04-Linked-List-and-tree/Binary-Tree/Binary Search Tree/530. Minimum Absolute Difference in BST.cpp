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
    int getMinimumDifference(TreeNode *root)
    {
        int ans = INT_MAX;
        int INF = 1e9;
        int pre = -INF;
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

/*
        采用前序历遍，顺序为中值-左边，右边-中值，父-右边
        二叉搜索树中，差值最小，即为中间的减去左边最大和右边最小的减去中值
        可以再做一遍
*/