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
    TreeNode *addOneRow(TreeNode *root, int val, int depth)
    {
        if (depth == 1)
        {
            return new TreeNode(val, root, nullptr);
        }
        int cnt = 1;
        queue<TreeNode *> q;
        q.push(root);
        while (!q.empty())
        {
            int lq = q.size();
            for (int i = 0; i < lq; ++i)
            {
                auto node = q.front();
                q.pop();
                if (cnt == depth - 1)
                {
                    node->left = new TreeNode(val, node->left, nullptr);
                    node->right = new TreeNode(val, nullptr, node->right);
                    continue;
                }
                if (node->left)
                    q.push(node->left);
                if (node->right)
                    q.push(node->right);
            }
            cnt++;
            if (cnt == depth)
                break;
        }
        return root;
    }
};

/*
    简单的在深度前一层插入节点就行
*/