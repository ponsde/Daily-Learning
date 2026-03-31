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
    int findBottomLeftValue(TreeNode *root)
    {
        queue<TreeNode *> q;
        q.push(root);
        TreeNode *node;
        while (!q.empty())
        {
            node = q.front();
            q.pop();
            if (node->right)
                q.push(node->right);
            if (node->left)
                q.push(node->left);
        }
        return node->val;
    }
};

/*
    找最下角的节点
    那么从右往左按层历遍，最后一个遇到的节点就是答案
*/