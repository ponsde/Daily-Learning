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
    bool flipEquiv(TreeNode *root1, TreeNode *root2)
    {
        if (root1 == nullptr || root2 == nullptr)
        {
            return root1 == root2;
        }
        if (root1->val != root2->val)
        {
            return false;
        }
        if ((root1->left && root2->left && root1->left->val != root2->left->val) || (!root1->left && root2->left) || (root1->left && !root2->left))
        {
            return flipEquiv(root1->right, root2->left) && flipEquiv(root1->left, root2->right);
        }
        return flipEquiv(root1->left, root2->left) && flipEquiv(root1->right, root2->right);
    }
};

// 也还好，当递归到的节点为nullptr时，检查另一个是否为nullptr，若为说明false
// 判断反转是否能完成通过上面两个，下面两个只决定是否反转，不负责检查
// 当root1的左为空，root2的左不为空或者root1的左不为空，root2的左为空时，说明必须反转
// 当root1的左和root2的左都不为空时，检查值是否相等，若不等说明必须反转
// 其他情况说明不需要反转
// 直接递归检查即可