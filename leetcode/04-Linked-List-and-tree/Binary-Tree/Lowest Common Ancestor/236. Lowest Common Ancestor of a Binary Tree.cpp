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
        if (!root || root == p || root == q)
        {
            return root;
        }
        TreeNode *l_node = lowestCommonAncestor(root->left, p, q);
        TreeNode *r_node = lowestCommonAncestor(root->right, p, q);
        if (!l_node || !r_node)
        {
            return l_node ? l_node : r_node;
        }
        if (l_node && r_node)
        {
            return root;
        }
        return l_node ? l_node : r_node;
    }
};

/*
    当左子树能找到p或q，右子树也能找到p或q时，说明当前节点就是最近公共祖先
    当左子树能找到p或q，右子树找不到时，说明最近公共祖先在左子树中，反之亦然
    当左右子树都找不到时，说明当前子树中没有p或q，返回空指针
*/