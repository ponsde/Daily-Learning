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
    bool isEvenOddTree(TreeNode *root)
    {
        int ly = 0;
        queue<TreeNode *> q;
        q.push(root);
        while (!q.empty())
        {
            int lq = q.size();
            vector<int> vec;
            for (int i = 0; i < lq; ++i)
            {
                auto node = q.front();
                q.pop();
                if (node->left)
                    q.push(node->left);
                if (node->right)
                    q.push(node->right);
                if ((ly % 2 == 0 && node->val % 2 != 1) || (ly % 2 == 1 && node->val % 2 != 0))
                {
                    return false;
                }
                vec.push_back(node->val);
            }
            if (ly % 2 == 1)
                reverse(vec.begin(), vec.end());
            int pre = vec[0];
            int lv = vec.size();
            for (int i = 1; i < lv; ++i)
            {
                if (vec[i] <= pre)
                    return false;
                pre = vec[i];
            }
            ly++;
        }
        return true;
    }
};

/*
    普通的bfs，可以优化提前存一个pre然后在for里面根据层数来判断
*/