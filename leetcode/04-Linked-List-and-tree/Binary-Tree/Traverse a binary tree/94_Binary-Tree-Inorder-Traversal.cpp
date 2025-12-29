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
    void help(TreeNode *node, vector<int> &vec)
    {
        if (node == nullptr)
        {
            return;
        }
        help(node->left, vec);
        vec.push_back(node->val);
        help(node->right, vec);
    }

public:
    vector<int> inorderTraversal(TreeNode *root)
    {
        vector<int> ans;
        help(root, ans);
        return ans;
    }
};

// 中序历遍，先历遍完左子树，再访问根节点，最后历遍右子树

class Solution
{
public:
    vector<int> inorderTraversal(TreeNode *root)
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
                if (vis == false)
                {
                    st.push(make_pair(false, node->right));
                    st.push(make_pair(true, node));
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

// 迭代做法，中序里边的顺序是左-根-右，所以入栈顺序是右-根-左