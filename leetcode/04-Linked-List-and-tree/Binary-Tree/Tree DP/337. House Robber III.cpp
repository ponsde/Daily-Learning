#include <bits/stdc++.h>

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
    int rob(TreeNode *root)
    {
        map<pair<TreeNode *, bool>, int> hash;
        auto dfs = [&](auto &&self, TreeNode *node, bool is_can)
        {
            if (!node)
                return 0;

            auto it = hash.find({node, is_can});

            if (it != hash.end())
                return it->second;

            int res = -1;
            if (is_can)
            {
                res = max(res, self(self, node->left, false) + self(self, node->right, false) + node->val);
            }
            res = max(res, self(self, node->left, true) + self(self, node->right, true));
            hash[{node, is_can}] = res;
            return res;
        };
        return dfs(dfs, root, true);
    }
};

/*
    最开始直接max 左右子树了，然后发现，它不是单线的，也就是说可以左子树抢完还可以抢右子树
    那么将左右子树的最好结果 + 一下
    然后是如果当前这个能抢，就抢了这个之后，左右子树就不能抢了，那么递归的时候就为false
    如果这个不抢，那么递归的左右子树就是true

    直接 dfs(dfs, root, true) 就行，应该不抢的情况会自动被计算出来的
*/

class Solution
{
public:
    int rob(TreeNode *root)
    {
        map<pair<TreeNode *, bool>, int> hash;
        auto dfs = [&](auto &&self, TreeNode *node) -> pair<int, int>
        {
            if (!node)
                return {0, 0};
            auto [l_rob, l_not] = self(self, node->left);
            auto [r_rob, r_not] = self(self, node->right);
            int rob = l_not + r_not + node->val;
            int not_rob = max(l_not, l_rob) + max(r_not, r_rob);
            return {rob, not_rob};
        };
        auto t = dfs(dfs, root);
        return max(t.first, t.second);
    }
};

/*
    我去，这个优雅
    对于每一个都是选和不选，先递归左右子树
    然后看当前，如果当前选，那么就是左右不选的结果 + 当前值
    如果当前不选，那么就是左右子树选和不选的最大值之和
*/