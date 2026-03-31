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
    vector<vector<int>> levelOrder(TreeNode *root)
    {
        vector<vector<int>> ans;
        queue<TreeNode *> q;
        q.push(root);
        while (!q.empty())
        {
            int lq = q.size();
            vector<int> t;
            for (int i = 0; i < lq; ++i)
            {
                TreeNode *node = q.front();
                q.pop();
                if (!node)
                    continue;
                q.push(node->left);
                q.push(node->right);
                t.push_back(node->val);
            }
            if (t.empty())
                break;
            ans.push_back(t);
        }
        return ans;
    }
};

/*
    简单的bfs
*/

class Solution
{
public:
    vector<vector<int>> levelOrder(TreeNode *root)
    {
        if (!root)
            return {};
        vector<vector<int>> ans;
        queue<TreeNode *> q;
        q.push(root);
        while (!q.empty())
        {
            int lq = q.size();
            vector<int> t;
            for (int i = 0; i < lq; ++i)
            {
                TreeNode *node = q.front();
                q.pop();
                if (node->left)
                    q.push(node->left);
                if (node->right)
                    q.push(node->right);
                t.push_back(node->val);
            }
            ans.push_back(t);
        }
        return ans;
    }
};

/*
    这样也行，略去nullptr的入队，减少不必要的判断
*/