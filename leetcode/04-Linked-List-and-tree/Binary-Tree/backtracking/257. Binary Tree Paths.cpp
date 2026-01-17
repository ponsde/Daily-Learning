#include <vector>
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
    vector<string> binaryTreePaths(TreeNode *root)
    {
        vector<string> ans;
        auto dfs = [&](auto &&self, TreeNode *node, string pre)
        {
            if (!node)
            {
                return;
            }
            pre += to_string(node->val);
            if (!node->left && !node->right)
            {
                ans.push_back(pre);
                return;
            }
            pre += "->";
            self(self, node->left, pre);
            self(self, node->right, pre);
        };
        dfs(dfs, root, "");
        return ans;
    }
};

// 简单的，通过传递pre，然后在子节点结合，但好像不太符合主题，没用到回溯，换个方法。

class Solution
{
public:
    vector<string> binaryTreePaths(TreeNode *root)
    {
        vector<string> ans;
        vector<string> path;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return;
            }
            path.push_back(to_string(node->val));
            if (!node->left && !node->right)
            {
                int l = path.size();
                string t = "";
                for (int i = 0; i < l; ++i)
                {
                    if (i > 0)
                    {
                        t += "->";
                    }
                    t += path[i];
                }
                ans.push_back(t);
            }
            else
            {
                self(self, node->left);
                self(self, node->right);
            }
            path.pop_back();
        };
        dfs(dfs, root);
        return ans;
    }
};