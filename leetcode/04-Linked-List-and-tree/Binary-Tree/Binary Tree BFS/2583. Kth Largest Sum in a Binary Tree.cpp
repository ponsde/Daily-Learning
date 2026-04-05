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
    long long kthLargestLevelSum(TreeNode *root, int k)
    {
        if (!root)
            return -1;
        priority_queue<long long, vector<long long>, greater<>> pq;
        queue<TreeNode *> q;
        q.push(root);
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
            pq.push(sum);
            if (pq.size() > k)
                pq.pop();
        }
        return pq.size() < k ? -1 : pq.top();
    }
};

/*
    第几大就用堆了
    然后注意溢出，用long long
*/