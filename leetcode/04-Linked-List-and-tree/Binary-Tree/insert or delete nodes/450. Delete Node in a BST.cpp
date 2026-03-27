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
    TreeNode *deleteNode(TreeNode *root, int key)
    {

        auto find = [&](auto &&self, TreeNode *node) -> TreeNode *
        {
            if (!node->left)
            {
                return node;
            }
            return self(self, node->left);
        };

        auto dfs = [&](auto &&self, TreeNode *&node, int k)
        {
            if (!node)
                return;
            if (node->val == k)
            {
                if (!node->left || !node->right)
                {
                    node = node->left ? node->left : node->right;
                }
                else
                {
                    auto it = find(find, node->right);
                    node->val = it->val;
                    self(self, node->right, node->val);
                }
                return;
            }
            if (node->val < k)
            {
                self(self, node->right, k);
            }
            if (node->val > k)
            {
                self(self, node->left, k);
            }
        };
        dfs(dfs, root, key);
        return root;
    }
};

/*

    当删除的节点左 || 右 有个为nullptr时，直接把另一个子树移过来当作新的node就好了
    当删除的节点左右子树都不为nullptr时，
    第一遍就直接把node->right移过来当作新的node，然后把node->right当作要删除的重复，然后发现了问题
    新的node应该要小于node->right，所以应该要找到node->right的最左边的节点，把它的值赋值给node，然后把这个最左边的节点当作要删除的重复
    为什么可以?
    当递归的时候，终止的条件就是该节点左右存在一个为nullptr，这样就能完成了
*/