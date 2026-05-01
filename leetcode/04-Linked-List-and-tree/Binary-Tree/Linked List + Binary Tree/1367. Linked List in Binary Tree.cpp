#include <bits/stdc++.h>

using namespace std;

struct ListNode
{
    int val;
    ListNode *next;
    ListNode() : val(0), next(nullptr) {}
    ListNode(int x) : val(x), next(nullptr) {}
    ListNode(int x, ListNode *next) : val(x), next(next) {}
};

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
    bool isSubPath(ListNode *head, TreeNode *root)
    {
        auto help = [&](auto &&self, TreeNode *node, ListNode *t)
        {
            if (!t)
                return true;
            if (!node)
                return false;
            if (node->val == t->val)
            {
                return self(self, node->left, t->next) || self(self, node->right, t->next);
            }
            return false;
        };

        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
                return false;
            if (node->val == head->val)
            {
                return help(help, node, head) || self(self, node->left) || self(self, node->right);
            }
            return self(self, node->left) || self(self, node->right);
        };
        return dfs(dfs, root);
    }
};

/*
 * 弄了双重的dfs，当历遍到的时候用help核对，然后继续left、right直到再次遇到val和head的val相同的情况
 */
