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
    void flatten(TreeNode *root)
    {
        vector<TreeNode *> vec;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
                return;
            vec.push_back(node);
            self(self, node->left);
            self(self, node->right);
        };
        dfs(dfs, root);
        int lv = vec.size();
        for (int i = 0; i < lv - 1; ++i)
        {
            vec[i]->right = vec[i + 1];
            vec[i]->left = nullptr;
        }
    }
};

/*
 * 没想出边递归边做的方法，换成了这样边提取再转化为链表
 */

class Solution2
{
    TreeNode *head = nullptr;

  public:
    void flatten(TreeNode *root)
    {
        if (!root)
            return;
        flatten(root->right);
        flatten(root->left);
        root->right = head;
        root->left = nullptr;
        head = root;
    }
};

/*
 * 头插法，先右后坐
 */

class Solution3
{

  public:
    void flatten(TreeNode *root)
    {
        auto dfs = [&](auto &&self, TreeNode *node) -> TreeNode *
        {
            if (!node)
                return nullptr;
            TreeNode *left_tail = self(self, node->left);
            TreeNode *right_tail = self(self, node->right);
            if (left_tail)
            {
                left_tail->right = node->right;
                node->right = node->left;
                node->left = nullptr;
            }
            return right_tail ? right_tail : left_tail ? left_tail
                                                       : node;
        };
        dfs(dfs, root);
    }
};

/*
 * 分治法，先把左边的排成链表，再把右边的排成，如果左边的尾部存在，那么就说明左边存在链表
 * 就把左边链表的尾连接右边的头，node的right改为left，left置空
 * 因为返回的是tail，所以检查right_tail是否为空，如果为空那么left的tail就是要return的，如果left的tail也为空，要返回的就是node本身了
 */
