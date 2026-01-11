#include <vector>
#include <queue>
#include <utility>

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
    int kthLargestPerfectSubtree(TreeNode *root, int k)
    {
        priority_queue<int, vector<int>, greater<>> pq;
        auto dfs = [&](auto &&self, TreeNode *node) -> pair<bool, int>
        {
            if (!node)
            {
                return {false, 0};
            }
            if (!node->left && !node->right)
            {
                pq.push(1);
                if (pq.size() > k)
                {
                    pq.pop();
                }
                return {true, 1};
            }
            auto [b_l, y_l] = self(self, node->left);
            auto [b_r, y_r] = self(self, node->right);
            if (b_l && b_r && y_l == y_r)
            {
                pq.push(y_l + 1);
                if (pq.size() > k)
                {
                    pq.pop();
                }
            }
            return {b_l && b_r && y_l == y_r, y_l + 1};
        };
        dfs(dfs, root);
        if (pq.size() < k)
        {
            return -1;
        }
        return (1 << pq.top()) - 1;
    }
};

// 完美二叉子树要求字数全要是合格的才行，不能只看一部分
// 返回的是节点的个数而不是高度，个数为2^h - 1
// 再做一遍