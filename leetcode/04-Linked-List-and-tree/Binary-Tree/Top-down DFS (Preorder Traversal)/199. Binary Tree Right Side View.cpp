#include <functional>
#include <vector>
#include <unordered_map>
#include <stack>
#include <tuple>

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
    vector<int> rightSideView(TreeNode *root)
    {
        unordered_map<int, vector<int>> hash;
        stack<tuple<bool, TreeNode *, int>> st;
        st.push(make_tuple(false, root, 0));
        while (!st.empty())
        {
            auto [vis, node, layer] = st.top();
            st.pop();
            if (node)
            {
                if (!vis)
                {
                    st.push(make_tuple(true, node, layer));
                    st.push(make_tuple(false, node->right, layer + 1));
                    st.push(make_tuple(false, node->left, layer + 1));
                }
                else
                {
                    hash[layer].push_back(node->val);
                }
            }
        }
        vector<int> ans(hash.size());
        for (auto &[layer, vec] : hash)
        {
            ans[layer] = vec.back();
        }
        return ans;
    }
};

// 从右往左看的第一个，那就是历遍左子树再右子树，然后把每一层的最后一个节点记录下来
// 用迭代做的