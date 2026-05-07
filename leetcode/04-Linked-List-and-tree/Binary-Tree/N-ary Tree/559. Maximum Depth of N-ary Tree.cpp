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
    int maxDepth(Node *root)
    {
        auto dfs = [&](auto &&self, Node *node)
        {
            if (!node)
                return 0;
            int dp = 0;
            for (auto x : node->children)
            {
                dp = max(dp, self(self, x));
            }
            return dp + 1;
        };
        return dfs(dfs, root);
    }
};

/*
 * 简单的最大深度
 */
