#include <string>

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
    string tree2str(TreeNode *root)
    {
        auto dfs = [&](auto &&self, TreeNode *node) -> string
        {
            if (!node)
            {
                return "";
            }
            string k = to_string(node->val);
            if (!node->left && !node->right)
            {
                return k;
            }
            k += node->left ? ("(" + self(self, node->left) + ")") : "()";
            k += node->right ? ("(" + self(self, node->right) + ")") : "";
            return k;
        };
        return dfs(dfs, root);
    }
};

// 题目描述的真烂，当左节点为空右节点不为空时，最括号不能省
// 当左节点不为空，右节点为空时，右节点的括号可以省略
// 当左右节点都为空时，左右节点的括号都能省略

class Solution
{
public:
    string tree2str(TreeNode *root)
    {
        string ans = "";
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return;
            }
            ans += to_string(node->val);
            if (node->left || node->right)
            {
                ans += '(';
                self(self, node->left);
                ans += ')';
            }

            if (node->right)
            {
                ans += '(';
                self(self, node->right);
                ans += ')';
            }
        };
        dfs(dfs, root);
        return ans;
    }
};

// 更好的解法，先序历遍，先加节点值进去，再加左右节点
// 可以再写一遍