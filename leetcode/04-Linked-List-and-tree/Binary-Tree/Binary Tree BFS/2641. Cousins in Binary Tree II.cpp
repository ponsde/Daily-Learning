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
    TreeNode *replaceValueInTree(TreeNode *root)
    {
        queue<pair<TreeNode *, TreeNode *>> q;
        q.emplace(root, nullptr);
        while (!q.empty())
        {
            int lq = q.size();
            vector<pair<TreeNode *, TreeNode *>> vec(lq);
            int sum = 0;
            for (int i = 0; i < lq; ++i)
            {
                auto [node, fa] = q.front();
                vec[i] = q.front();
                q.pop();
                if (node->left)
                    q.emplace(node->left, node);
                if (node->right)
                    q.emplace(node->right, node);
                sum += node->val;
            }
            unordered_map<TreeNode *, int> hash;
            for (auto [node, fa] : vec)
            {
                hash[fa] += node->val;
            }
            for (auto [node, fa] : vec)
            {
                node->val = sum - hash[fa];
            }
        }
        return root;
    }
};

/*
    有点笨采用记录父节点然后多次历遍来...
*/