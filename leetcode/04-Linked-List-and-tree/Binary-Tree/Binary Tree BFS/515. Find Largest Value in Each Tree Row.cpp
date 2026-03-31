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
    vector<int> largestValues(TreeNode *root)
    {
        if (!root)
            return {};
        vector<int> ans;
        queue<TreeNode *> q;
        q.push(root);
        while (!q.empty())
        {
            int t = INT_MIN;
            int lq = q.size();
            for (int i = 0; i < lq; ++i)
            {
                auto node = q.front();
                q.pop();
                if (node->left)
                    q.push(node->left);
                if (node->right)
                    q.push(node->right);
                t = max(t, node->val);
            }
            ans.push_back(t);
        }
        return ans;
    }
};

/*
    求每一层，那么每一层维护一个t即可
*/