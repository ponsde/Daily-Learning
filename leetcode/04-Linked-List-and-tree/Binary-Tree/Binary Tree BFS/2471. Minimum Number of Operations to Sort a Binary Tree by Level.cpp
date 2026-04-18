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

    int solve(vector<int> &vec)
    {
        int l = vec.size();
        vector<pair<int, int>> t(l);
        for (int i = 0; i < l; ++i)
        {
            t[i] = {vec[i], i};
        }
        sort(t.begin(), t.end());
        vector<int> to(l);
        for (int i = 0; i < l; ++i)
        {
            to[t[i].second] = i;
        }
        vector<bool> vis(l, false);
        int res = 0;
        for (int i = 0; i < l; ++i)
        {
            if (vis[i] || to[i] == i)
                continue;
            int len = 0;
            int x = i;
            while (!vis[x])
            {
                vis[x] = true;
                len++;
                x = to[x];
            }
            res += len - 1;
        }
        return res;
    }

public:
    int minimumOperations(TreeNode *root)
    {
        if (!root)
            return 0;
        queue<TreeNode *> q;
        q.push(root);
        int sum = 0;
        while (!q.empty())
        {
            int lq = q.size();
            vector<int> vec(lq);
            for (int i = 0; i < lq; ++i)
            {
                auto node = q.front();
                q.pop();
                vec[i] = node->val;
                if (node->left)
                    q.push(node->left);
                if (node->right)
                    q.push(node->right);
            }
            sum += solve(vec);
        }
        return sum;
    }
};

/*
    置换环...
    排序后找下标对应的去处，若是成环，那么改环的大小 - 1 就是需要的交换次数
*/