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

class CBTInserter
{
    TreeNode *root;
    queue<TreeNode *> ns;

  public:
    CBTInserter(TreeNode *root)
    {
        this->root = root;
        queue<TreeNode *> q;
        q.push(root);
        while (!q.empty())
        {
            int lq = q.size();
            for (int i = 0; i < lq; ++i)
            {
                auto node = q.front();
                q.pop();
                if (!node->left || !node->right)
                    ns.push(node);
                if (node->left)
                    q.push(node->left);
                if (node->right)
                    q.push(node->right);
            }
        }
    }

    int insert(int val)
    {
        auto node = ns.front();
        auto new_node = new TreeNode(val);
        if (!node->left)
            node->left = new_node;
        else
            node->right = new_node;
        if (node->left && node->right)
            ns.pop();
        ns.push(new_node);
        return node->val;
    }

    TreeNode *get_root() { return root; }
};

/*
 *
 * 哇哦，同队列这样一层层一边的时候储存还有空节点的节点，因为是从左到右，那么存在的空节点就是从左上到右下这样
 * 不用担心node加到queue的末尾会不会出现下面的走完了才走上面，因为传入的root是完全二叉树
 * 所以不会出现特别不平衡的情况
 */
