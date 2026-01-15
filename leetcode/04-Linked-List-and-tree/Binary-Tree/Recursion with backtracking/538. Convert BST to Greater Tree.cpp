#include <vector>
#include <algorithm>

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
    TreeNode *convertBST(TreeNode *root)
    {
        vector<int> vec;
        auto get_val = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return;
            }
            vec.push_back(node->val);
            self(self, node->left);
            self(self, node->right);
        };
        get_val(get_val, root);
        int l = vec.size();
        sort(vec.begin(), vec.end());
        vector<long long> s(l + 1);
        for (int i = 0; i < l; ++i)
        {
            s[i + 1] = s[i] + vec[i];
        }
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return;
            }
            int idx = lower_bound(vec.begin(), vec.end(), node->val) - vec.begin();
            node->val = s[l] - s[idx];
            self(self, node->left);
            self(self, node->right);
        };
        dfs(dfs, root);
        return root;
    }
};

// 先历遍把值放进去，然后前缀和，最后再遍历一遍更新节点值

class Solution
{
public:
    TreeNode *convertBST(TreeNode *root)
    {
        int k = 0;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return;
            }
            self(self, node->right);
            k += node->val;
            node->val = k;
            self(self, node->left);
        };
        dfs(dfs, root);
        return root;
    }
};

// 用二叉搜索树的性质，右边的节点都比中间高，左边的都比中间低来做