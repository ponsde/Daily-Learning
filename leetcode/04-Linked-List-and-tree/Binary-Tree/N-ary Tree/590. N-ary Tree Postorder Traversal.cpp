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
    vector<int> postorder(Node *root)
    {
        stack<pair<Node *, bool>> st;
        st.emplace(root, false);
        vector<int> ans;
        while (!st.empty())
        {
            auto [node, vis] = st.top();
            st.pop();
            if (!node)
                continue;
            if (vis)
            {
                ans.push_back(node->val);
                continue;
            }

            auto &chil = node->children;
            int lc = chil.size();
            st.emplace(node, true);
            for (int i = lc - 1; i >= 0; --i)
            {
                st.emplace(chil[i], false);
            }
        }
        return ans;
    }
};

/*
 * 后续历遍是先子节点1、子节点1子树、子节点2 ... root
 */
