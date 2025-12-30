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
    int goodNodes(TreeNode *root)
    {
        int cnt = 0;
        function<void(TreeNode *, int)> dfs = [&](TreeNode *node, int k)
        {
            if (!node)
            {
                return;
            }
            if (node->val >= k)
            {
                cnt++;
                k = node->val;
            }
            dfs(node->left, k);
            dfs(node->right, k);
        };
        dfs(root, root->val);
        return cnt;
    }
};

// 通过k记录当前线路上最大的值，若是该节点比k大则计数器加一，并更新k值
// 但速度有点慢

class Solution
{
public:
    int goodNodes(TreeNode *root, int k = INT_MIN)
    {
        if (root == nullptr)
        {
            return 0;
        }
        int left = goodNodes(root->left, max(k, root->val));
        int right = goodNodes(root->right, max(k, root->val));
        return left + right + (root->val >= k);
    }
};

// 灵神的做法
// 这个简短，通过root->val >= k来计数