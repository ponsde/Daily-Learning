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
    vector<vector<int>> pathSum(TreeNode *root, int targetSum)
    {
        vector<vector<int>> ans;
        vector<int> path;
        int sum = 0;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return;
            }
            path.push_back(node->val);
            sum += node->val;
            if (!node->left && !node->right)
            {
                if (sum == targetSum)
                {
                    ans.push_back(path);
                }
            }
            else
            {
                self(self, node->left);
                self(self, node->right);
            }

            sum -= node->val;
            path.pop_back();
        };
        dfs(dfs, root);
        return ans;
    }
};