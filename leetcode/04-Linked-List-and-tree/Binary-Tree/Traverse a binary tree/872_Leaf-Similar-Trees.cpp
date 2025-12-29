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
        if (!node)
        {
            return;
        }
        if (!node->left && !node->right)
        {
            vec.push_back(node->val);
            return;
        }
        help(node->left, vec);
        help(node->right, vec);
    }

public:
    bool leafSimilar(TreeNode *root1, TreeNode *root2)
    {
        vector<int> vec1;
        vector<int> vec2;
        help(root1, vec1);
        help(root2, vec2);
        return vec1 == vec2;
    }
};

// 先左后右，当当前节点为叶子节点时，记录该节点值