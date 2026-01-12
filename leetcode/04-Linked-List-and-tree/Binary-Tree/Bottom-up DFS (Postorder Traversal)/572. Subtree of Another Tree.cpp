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
    bool isSubtree(TreeNode *root, TreeNode *subRoot)
    {
        auto check = [&](auto &&self, TreeNode *p, TreeNode *q)
        {
            if (!p || !q)
            {
                return p == q;
            }
            return p->val == q->val && self(self, p->left, q->left) && self(self, p->right, q->right);
        };
        bool ans = false;
        bool find = false;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return;
            }
            if (node->val == subRoot->val && check(check, node, subRoot))
            {
                find = true;
                ans = true;
            }
            if (!find)
            {
                self(self, node->left);
                self(self, node->right);
            }
        };
        dfs(dfs, root);
        return ans;
    }
};

// 通过100的来检测是否为相同
// 然后dfs找到相同的点再进行check
// 通过find来提前返回
