#include <bits/stdc++.h>

using namespace std;

struct TreeNode
{
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right)
        : val(x), left(left), right(right) {}
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

// 换了个方法，不记录父节点来做

class Solution2
{
  public:
    TreeNode *replaceValueInTree(TreeNode *root)
    {
        queue<TreeNode *> q;
        root->val = 0;
        q.push(root);
        while (!q.empty())
        {
            int lq = q.size();
            int sum = 0;
            vector<TreeNode *> fa(lq);
            for (int i = 0; i < lq; ++i)
            {
                auto node = q.front();
                q.pop();
                fa[i] = node;
                int t = 0;
                if (node->left)
                {
                    q.push(node->left);
                    sum += node->left->val;
                    t += node->left->val;
                }
                if (node->right)
                {
                    q.push(node->right);
                    sum += node->right->val;
                    t += node->right->val;
                }
                if (node->left)
                    node->left->val = t;
                if (node->right)
                    node->right->val = t;
            }
            for (auto node : fa)
            {
                if (node->left)
                    node->left->val = sum - node->left->val;
                if (node->right)
                    node->right->val = sum - node->right->val;
            }
        }
        return root;
    }
};

/*
 * 这里一边记录改父节点的子节点所有的和，一边记录节点
 * 然后历遍节点时，将将该父节点的子节点和填到子节点上，这样更新时只需要将sum -
 * 当前的val就行
 */
