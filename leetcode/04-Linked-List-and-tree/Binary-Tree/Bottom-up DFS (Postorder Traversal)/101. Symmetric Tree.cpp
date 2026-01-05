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
    bool help(TreeNode *p, TreeNode *q)
    {
        if (!p || !q)
        {
            return p == q;
        }
        return p->val == q->val && help(p->left, q->right) && help(p->right, q->left);
    }

public:
    bool isSymmetric(TreeNode *root)
    {
        return help(root->left, root->right);
    }
};

// 跟100差不多，检查p的左子树和q的右子树是否一样，root往help传入root的两边
// 然后两边分别检查它的左子树是否和另一边的右子树一样，右子树是否和另一边的左子树一样