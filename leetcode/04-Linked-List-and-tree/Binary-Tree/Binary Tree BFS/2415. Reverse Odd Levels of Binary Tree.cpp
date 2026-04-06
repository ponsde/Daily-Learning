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
    TreeNode *reverseOddLevels(TreeNode *root)
    {
        if (!root)
            return nullptr;
        int cnt = 0;
        vector<TreeNode *> fa;
        queue<TreeNode *> q;
        q.push(root);
        while (!q.empty())
        {
            int lq = q.size();
            if (cnt % 2 == 0)
            {
                deque<TreeNode *> k;
                for (int i = 0; i < lq; ++i)
                {
                    auto t = q.front();
                    q.pop();
                    fa.push_back(t);
                    if (t->left)
                        q.push(t->left);
                    if (t->right)
                        q.push(t->right);
                }
            }
            else
            {
                vector<int> va;
                for (int i = 0; i < lq; ++i)
                {
                    auto t = q.front();
                    q.pop();
                    va.push_back(t->val);
                    if (t->left)
                        q.push(t->left);
                    if (t->right)
                        q.push(t->right);
                }
                reverse(va.begin(), va.end());
                for (int i = 0; i < lq; i += 2)
                {
                    int lf = va[i];
                    int rt = va[i + 1];
                    fa[i / 2]->left->val = lf;
                    fa[i / 2]->right->val = rt;
                }
                fa.clear();
            }
            cnt++;
        }
        return root;
    }
};

/*
    要求反转奇数层，那么将奇数层的val存起来然后反转，偶数层记录fa，然后该节替换
    这里用替换val比替换指针简单
*/