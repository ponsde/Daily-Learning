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
    TreeNode *getTargetCopy(TreeNode *original, TreeNode *cloned, TreeNode *target)
    {
        TreeNode *ans;
        auto dfs = [&](auto &&self, TreeNode *p, TreeNode *q)
        {
            if (!p || !q)
            {
                return false;
            }
            if (p == target)
            {
                ans = q;
                return true;
            }
            if (self(self, p->left, q->left) || self(self, p->right, q->right))
            {
                return true;
            }
            return false;
        };
        dfs(dfs, original, cloned);
        return ans;
    }
};

// 通过dfs遍历原树和克隆树，找到目标节点对应的克隆节点，注意要返回的时cloned的副本而不是p的副本

// 因为target本身时original上的节点，所以只需要检查original的节点是否等于target，等于的话就把cloned对应的节点赋值给ans即可