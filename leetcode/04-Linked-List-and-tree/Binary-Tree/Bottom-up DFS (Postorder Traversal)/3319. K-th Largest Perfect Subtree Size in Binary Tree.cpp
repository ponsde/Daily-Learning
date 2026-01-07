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
        vector<int> vec;
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
            auto [l_b, l_len] = self(self, node->left);
            auto [r_b, r_len] = self(self, node->right);
            if (l_b && r_b)
            {
                if (l_len == r_len)
                {
                    pq.push(l_len + 1);
                    if (pq.size() > k)
                    {
                        pq.pop();
                    }
                    return {true, min(l_len, r_len) + 1};
                }
            }
            return {false, 0};
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