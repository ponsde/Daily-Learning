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
    int longestZigZag(TreeNode *root)
    {
        int ans = 0;
        function<void(TreeNode *, int, int)> dfs = [&](TreeNode *node, int dir, int len)
        {
            if (!node)
            {
                ans = max(ans, len - 1);
                return;
            }
            if (dir == 0)
            {
                dfs(node->left, dir ^ 1, len + 1);
                dfs(node->left, dir, 0);

                dfs(node->right, dir, 0);
                dfs(node->right, dir ^ 1, 0);
            }
            else
            {
                dfs(node->left, dir, 0);
                dfs(node->left, dir ^ 1, 0);

                dfs(node->right, dir ^ 1, len + 1);
                dfs(node->right, dir, 0);
            }
        };
        dfs(root, 0, 0);
        dfs(root, 1, 0);
        return ans;
    }
};

// 最开始暴力的想法，但是会超时

class Solution
{
public:
    int longestZigZag(TreeNode *root)
    {
        int ans = 0;
        function<void(TreeNode *, int, int)> dfs = [&](TreeNode *node, int dir, int len)
        {
            if (!node)
            {
                ans = max(ans, len - 1);
                return;
            }
            if (dir == 0)
            {
                dfs(node->right, dir ^ 1, len + 1);

                dfs(node->left, dir, 1);
            }
            else
            {
                dfs(node->left, dir ^ 1, len + 1);

                dfs(node->right, dir, 1);
            }
        };
        dfs(root, 0, 0);
        dfs(root, 1, 0);
        return ans;
    }
};

// 这样做了，但速度奇慢无比，原因是lambda的function，每次调用都会重新分配内存，导致效率极低

class Solution
{
    int ans = 0;

    void dfs(TreeNode *node, int dir, int len)
    {
        if (!node)
        {
            ans = max(ans, len - 1);
            return;
        }
        if (dir == 0)
        {
            dfs(node->right, dir ^ 1, len + 1);

            dfs(node->left, dir, 1);
        }
        else
        {
            dfs(node->left, dir ^ 1, len + 1);

            dfs(node->right, dir, 1);
        }
    }

public:
    int longestZigZag(TreeNode *root)
    {
        dfs(root, 0, 0);
        dfs(root, 1, 0);
        return ans;
    }
};

// 把lambda改成成员函数后，速度提升非常明显

class Solution
{
public:
    int longestZigZag(TreeNode *root)
    {
        int ans = 0;
        auto dfs = [&](auto &&self, TreeNode *node, int dir, int len)
        {
            if (!node)
            {
                ans = max(ans, len - 1);
                return;
            }
            if (dir == 0)
            {
                self(self, node->right, dir ^ 1, len + 1);

                self(self, node->left, dir, 1);
            }
            else
            {
                self(self, node->left, dir ^ 1, len + 1);

                self(self, node->right, dir, 1);
            }
        };
        dfs(dfs, root, 0, 0);
        dfs(dfs, root, 1, 0);
        return ans;
    }
};

// 现代lambda的高效率，通过&&万能引用，然后lambda里面的self是它自己的参数，dfs是外部变量，还未定义呢
