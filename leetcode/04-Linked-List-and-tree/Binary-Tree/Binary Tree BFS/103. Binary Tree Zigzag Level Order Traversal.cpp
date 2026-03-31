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
    vector<vector<int>> zigzagLevelOrder(TreeNode *root)
    {
        if (!root)
            return {};
        queue<TreeNode *> q;
        q.push(root);
        vector<vector<int>> ans;
        bool even = false;
        while (!q.empty())
        {
            int lq = q.size();
            vector<int> t;
            for (int i = 0; i < lq; ++i)
            {
                auto node = q.front();
                q.pop();
                if (node->left)
                    q.push(node->left);
                if (node->right)
                    q.push(node->right);
                t.push_back(node->val);
            }
            if (even)
                reverse(t.begin(), t.end());
            even = !even;
            ans.push_back(t);
        }
        return ans;
    }
};

/*
    简单的bfs，通过判断是否为奇偶层来判断是否reverse
*/