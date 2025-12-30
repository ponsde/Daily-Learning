#include <functional>
#include <climits>

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
    int findSecondMinimumValue(TreeNode *root)
    {
        function<void(TreeNode *, long long &, int)> dfs = [&](TreeNode *node, long long &ans, int std)
        {
            if (node)
            {
                if (node->val > std)
                {
                    ans = min(ans, 1LL * node->val);
                    return;
                }
                dfs(node->left, ans, std);
                dfs(node->right, ans, std);
            }
        };
        long long ans = LLONG_MAX;
        dfs(root, ans, root->val);
        return ans == LLONG_MAX ? -1 : ans;
    }
};

// 历遍整个二叉树，比较节点和根节点的大小，将大于根节点并且小于当前ans的节点值作为ans
// 有个很坑的是它里面有出现INT_MAX的测试用例，所以ans要用long long类型，避免最后ans == INT_MAX时返回错误结果