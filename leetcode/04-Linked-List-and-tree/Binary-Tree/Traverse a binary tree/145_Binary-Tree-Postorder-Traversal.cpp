#include <vector>
#include <stack>

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
    vector<int> postorderTraversal(TreeNode *root)
    {
        stack<pair<bool, TreeNode *>> st;
        st.push(make_pair(false, root));
        vector<int> ans;
        while (!st.empty())
        {
            auto vis = st.top().first;
            auto node = st.top().second;
            st.pop();
            if (node)
            {
                if (!vis)
                {
                    st.push(make_pair(true, node));
                    st.push(make_pair(false, node->right));
                    st.push(make_pair(false, node->left));
                }
                else
                {
                    ans.push_back(node->val);
                }
            }
        }
        return ans;
    }
};

// 迭代做法的后序遍历