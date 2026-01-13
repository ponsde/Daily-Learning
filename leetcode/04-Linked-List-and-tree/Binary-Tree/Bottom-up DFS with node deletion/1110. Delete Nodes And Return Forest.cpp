#include <vector>
#include <unordered_set>

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
    vector<TreeNode *> delNodes(TreeNode *root, vector<int> &to_delete)
    {
        unordered_set<int> st;
        vector<TreeNode *> ans;
        for (auto x : to_delete)
        {
            st.insert(x);
        }
        auto dfs = [&](auto &&self, TreeNode *node) -> pair<bool, TreeNode *>
        {
            if (!node)
            {
                return {false, nullptr};
            }
            auto [bl, l_node] = self(self, node->left);
            auto [br, r_node] = self(self, node->right);
            if (bl)
            {
                node->left = nullptr;
                if (l_node->left)
                {
                    ans.push_back(l_node->left);
                }
                if (l_node->right)
                {
                    ans.push_back(l_node->right);
                }
            }
            if (br)
            {
                node->right = nullptr;
                if (r_node->left)
                {
                    ans.push_back(r_node->left);
                }
                if (r_node->right)
                {
                    ans.push_back(r_node->right);
                }
            }

            return {st.find(node->val) != st.end(), node};
        };
        if (dfs(dfs, root).first)
        {
            if (root->left)
            {
                ans.push_back(root->left);
            }
            if (root->right)
            {
                ans.push_back(root->right);
            }
        }
        else
        {
            ans.push_back(root);
        }

        return ans;
    }
};

// 后序历遍，先检查左右是否有满足的，若有则判断其子节点是否需要加入ans
// 最后检查root，然后判断root是否放入即可