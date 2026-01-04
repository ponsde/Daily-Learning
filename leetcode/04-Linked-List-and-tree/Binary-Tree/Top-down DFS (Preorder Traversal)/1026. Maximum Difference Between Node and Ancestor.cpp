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
    int maxAncestorDiff(TreeNode *root)
    {
        int ans = 0;
        function<void(TreeNode *, pair<int, int>)> dfs = [&](TreeNode *node, pair<int, int> pre)
        {
            if (!node)
            {
                return;
            }
            ans = max({ans, abs(pre.first - node->val), abs(pre.second - node->val)});
            pre.first = max(pre.first, node->val);
            pre.second = min(pre.second, node->val);
            dfs(node->left, pre);
            dfs(node->right, pre);
        };
        dfs(root, make_pair(root->val, root->val));
        return ans;
    }
};

// pair分别储存祖父节点的最大和最小，然后挨个看就好了
// 感觉状态回来了点

class Solution
{
public:
    int maxAncestorDiff(TreeNode *root)
    {
        int ans = 0;
        function<void(TreeNode *, pair<int, int>)> dfs = [&](TreeNode *node, pair<int, int> pre)
        {
            if (!node)
            {
                ans = max(ans, pre.first - pre.second);
                return;
            }
            pre.first = max(pre.first, node->val);
            pre.second = min(pre.second, node->val);
            dfs(node->left, pre);
            dfs(node->right, pre);
        };
        dfs(root, make_pair(root->val, root->val));
        return ans;
    }
};

// 优化，只在叶子节点后计算差值，此时的pre储存的该路径的最大和最小

class Solution
{
public:
    int maxAncestorDiff(TreeNode *root)
    {
        int ans = 0;
        function<pair<int, int>(TreeNode *)> dfs = [&](TreeNode *node)
        {
            if (!node)
            {
                return make_pair(INT_MIN, INT_MAX);
            }
            auto [lmx, lmn] = dfs(node->left);
            auto [rmx, rmn] = dfs(node->right);
            int mx = max({node->val, lmx, rmx});
            int mn = min({node->val, lmn, rmn});
            ans = max({ans, abs(node->val - mx), abs(node->val - mn)});
            return make_pair(mx, mn);
        };
        dfs(root);
        return ans;
    }
};

// 从子到父，做的不是很熟