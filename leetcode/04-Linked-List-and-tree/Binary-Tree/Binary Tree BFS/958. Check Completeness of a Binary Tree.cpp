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
    bool isCompleteTree(TreeNode *root)
    {
        queue<TreeNode *> q;
        q.push(root);

        while (!q.empty())
        {
            int lq = q.size();

            for (int i = 0; i < lq; ++i)
            {
                auto node = q.front();
                q.pop();
                if (!node)
                {
                    while (!q.empty())
                    {
                        if (q.front())
                            return false;
                        q.pop();
                    }
                    break;
                }
                q.push(node->left);
                q.push(node->right);
            }
        }
        return true;
    }
};

/*
 *
 * 验证是否是安全二叉树，那么就一层层历遍，因为是从左到右，那么当发现空节点时，后面的节点不能有非空节点
 */
