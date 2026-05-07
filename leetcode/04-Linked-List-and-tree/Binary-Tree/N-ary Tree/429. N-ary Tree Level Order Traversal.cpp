#include <bits/stdc++.h>

using namespace std;

class Node
{
  public:
    int val;
    vector<Node *> children;

    Node() {}

    Node(int _val)
    {
        val = _val;
    }

    Node(int _val, vector<Node *> _children)
    {
        val = _val;
        children = _children;
    }
};

class Solution
{
  public:
    vector<vector<int>> levelOrder(Node *root)
    {
        if (!root)
            return {};
        queue<Node *> q;
        q.push(root);
        vector<vector<int>> ans;
        while (!q.empty())
        {
            int lq = q.size();
            vector<int> t(lq);
            for (int i = 0; i < lq; ++i)
            {
                auto node = q.front();
                q.pop();
                for (auto x : node->children)
                {
                    q.push(x);
                }
                t[i] = node->val;
            }
            ans.push_back(t);
        }
        return ans;
    }
};

/*
 * 前序历遍
 */
