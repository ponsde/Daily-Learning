#include <functional>

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
    int sumEvenGrandparent(TreeNode *root)
    {
        int ans = 0;
        function<void(TreeNode *, int, int)> dfs = [&](TreeNode *node, int f, int fd)
        {
            if (!node)
            {
                return;
            }
            if (fd <= 100 && fd % 2 == 0)
            {
                ans += node->val;
            }
            dfs(node->left, node->val, f);
            dfs(node->right, node->val, f);
        };
        dfs(root, 111, 111);
        return ans;
    }
};

// 历遍，通过两个参数，父和祖父，判断祖父是否为偶数

class Solution
{
public:
    int sumEvenGrandparent(TreeNode *root)
    {
        int ans = 0;
        function<void(TreeNode *, int)> dfs = [&](TreeNode *node, int mask)
        {
            if (!node)
            {
                return;
            }
            if (mask & 1)
            {
                ans += node->val;
            }
            mask >>= 1;
            mask |= node->val % 2 == 0 ? 2 : 0;
            dfs(node->left, mask);
            dfs(node->right, mask);
        };
        dfs(root, 0);
        return ans;
    }
};

// 位运算的做法，用mask的最低位表示祖父节点的奇偶性，次低位表示父节点的奇偶性
// very good