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
    int maxLevelSum(TreeNode *root)
    {
        if (!root)
            return 0;
        queue<TreeNode *> q;
        q.push(root);
        int mx = INT_MIN;
        int cnt = 1;
        int ans = 0;
        while (!q.empty())
        {
            int lq = q.size();
            int sum = 0;
            for (int i = 0; i < lq; ++i)
            {
                auto t = q.front();
                q.pop();
                sum += t->val;
                if (t->left)
                    q.push(t->left);
                if (t->right)
                    q.push(t->right);
            }
            if (mx < sum)
            {
                mx = sum;
                ans = cnt;
            }
            cnt++;
        }
        return ans;
    }
};

/*
    简单的按层遍历即可
*/