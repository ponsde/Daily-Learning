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
    void help(TreeNode *node, vector<int> &vec)
    {
        if (node == nullptr)
        {
            return;
        }
        vec.push_back(node->val);
        help(node->left, vec);
        help(node->right, vec);
    }

public:
    vector<int> preorderTraversal(TreeNode *root)
    {
        vector<int> vec;
        help(root, vec);
        return vec;
    }
};

// 简单题，要注意的是当node为空时直接返回