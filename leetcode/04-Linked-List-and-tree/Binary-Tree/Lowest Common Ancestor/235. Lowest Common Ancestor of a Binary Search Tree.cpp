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
    TreeNode *lowestCommonAncestor(TreeNode *root, TreeNode *p, TreeNode *q)
    {
        if (root->val > p->val && root->val > q->val)
        {
            return lowestCommonAncestor(root->left, p, q);
        }
        if (root->val < p->val && root->val < q->val)
        {
            return lowestCommonAncestor(root->right, p, q);
        }
        return root;
    }
};

// 二叉搜索树，若是当前节点值大于p和q的值，则p和q都在左子树，递归左子树
// 若是当前节点值小于p和q的值，则p和q都在右子树，递归右子树
// 否则当前节点即为最近公共祖先
// 会不会出现root为nullptr的情况?因为是二叉搜索树，先进行判断再递归，所以不会出现nullptr的情况