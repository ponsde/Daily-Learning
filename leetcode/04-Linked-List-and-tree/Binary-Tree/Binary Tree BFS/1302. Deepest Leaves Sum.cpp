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
    int deepestLeavesSum(TreeNode *root)
    {
        if (!root)
            return 0;
        queue<TreeNode *> q;
        q.push(root);
        long long ans = 0;
        while (!q.empty())
        {
            int lq = q.size();
            long long sum = 0;
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
            ans = sum;
        }
        return ans;
    }
};

/*
    求最后一层，那么每一层就覆盖，最后留下的ans就是最后一层的和
*/
