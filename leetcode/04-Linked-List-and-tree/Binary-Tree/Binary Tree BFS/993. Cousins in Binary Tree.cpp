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
    bool isCousins(TreeNode *root, int x, int y)
    {
        if (!root)
            return false;
        queue<pair<TreeNode *, TreeNode *>> q;
        q.emplace(root, nullptr);
        while (!q.empty())
        {
            int lq = q.size();
            pair<bool, TreeNode *> fx = {false, nullptr};
            pair<bool, TreeNode *> fy = {false, nullptr};

            for (int i = 0; i < lq; ++i)
            {
                auto ts = q.front();
                q.pop();
                auto t = ts.first;
                auto fa = ts.second;
                if (t->left)
                    q.emplace(t->left, t);
                if (t->right)
                    q.emplace(t->right, t);
                if (t->val == x)
                    fx = {true, fa};
                if (t->val == y)
                    fy = {true, fa};
            }
            if (fx.first && fy.first && (fx.second != fy.second))
                return true;
        }
        return false;
    }
};

/*
    因为要求父亲不能是同一个，那么就用了pair来储存当前和父
*/