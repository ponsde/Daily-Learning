#include <algorithm>
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
    TreeNode *sufficientSubset(TreeNode *root, int limit)
    {
        auto dfs = [&](auto &&self, TreeNode *node, int k) -> pair<bool, int>
        {
            if (!node)
            {
                return {false, INT_MIN};
            }
            if (!node->left && !node->right)
            {
                return {true, node->val};
            }
            auto [bl, l_sum] = self(self, node->left, k + node->val);
            auto [br, r_sum] = self(self, node->right, k + node->val);
            if (bl && l_sum + node->val + k < limit)
            {
                node->left = nullptr;
            }
            if (br && r_sum + node->val + k < limit)
            {
                node->right = nullptr;
            }

            return {bl || br, max(1LL * l_sum, 1LL * r_sum) + node->val};
        };
        dfs(dfs, root, 0);
        if (!root->left && !root->right && root->val < limit)
        {
            return nullptr;
        }
        return root;
    }
};

/*
    题目描述的一团烂，通过接收返回的bool判断左右是否存在叶子节点，若有则进入if判断是否需要删除
    可以再写一遍看看
*/

class Solution
{
public:
    TreeNode *sufficientSubset(TreeNode *root, int limit)
    {
        limit -= root->val;
        if (!root->left && !root->right)
        {
            return limit > 0 ? nullptr : root;
        }
        if (root->left)
        {
            root->left = sufficientSubset(root->left, limit);
        }
        if (root->right)
        {
            root->right = sufficientSubset(root->right, limit);
        }
        return root->left || root->right ? root : nullptr;
    }
};

/*
    优雅，调用它自己，因为到叶子节点发现不符合要求是，会返回nullptr，然后上一级通过检测它是否是新的叶子节点
    如果是就说明它的字节点都不符合要求，那么他也要被删除，返回nullptr
*/