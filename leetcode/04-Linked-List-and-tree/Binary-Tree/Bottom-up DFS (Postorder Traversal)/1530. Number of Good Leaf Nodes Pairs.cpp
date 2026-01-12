#include <vector>

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
    int countPairs(TreeNode *root, int distance)
    {
        int ans = 0;
        auto dfs = [&](auto &&self, TreeNode *node) -> vector<int>
        {
            if (!node)
            {
                return {};
            }
            if (!node->left && !node->right)
            {
                return {0};
            }
            auto vec_l = self(self, node->left);
            auto vec_r = self(self, node->right);
            vector<int> next;
            for (auto &x : vec_l)
            {
                if (++x <= distance)
                {
                    next.push_back(x);
                }
            }
            for (auto &x : vec_r)
            {
                if (++x <= distance)
                {
                    next.push_back(x);
                }
            }
            for (auto x : vec_l)
            {
                for (auto y : vec_r)
                {
                    if (x + y <= distance)
                    {
                        ans++;
                    }
                }
            }
            return next;
        };
        dfs(dfs, root);
        return ans;
    }
};

// 通过vector来记录当前叶子节点的个数和它距离当前节点的距离
// 通过++x来提前剪枝
// 然后通过两层for循环来计算左右子树的叶子节点对数
// 再写一遍，第一次用vector做，想了好久怎么同时记录叶子节点个数和它们对应的距离