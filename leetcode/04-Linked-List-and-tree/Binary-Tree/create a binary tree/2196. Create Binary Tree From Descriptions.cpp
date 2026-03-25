#include <bits/stdc++.h>

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
    TreeNode *createBinaryTree(vector<vector<int>> &descriptions)
    {
        int l = descriptions.size();
        unordered_map<int, TreeNode *> hash;
        unordered_set<int> st;
        for (auto &x : descriptions)
        {
            int pa = x[0];
            int ch = x[1];
            int is_left = x[2];
            st.insert(ch);
            if (hash.find(pa) == hash.end())
            {
                hash[pa] = new TreeNode(pa);
            }
            TreeNode *fa = hash[pa];
            if (hash.find(ch) == hash.end())
            {
                hash[ch] = new TreeNode(ch);
            }
            TreeNode *child = hash[ch];
            if (is_left)
            {
                fa->left = child;
            }
            else
            {
                fa->right = child;
            }
        }
        for (auto &[fa, node] : hash)
        {
            if (st.find(fa) == st.end())
            {
                return node;
            }
        }
        return nullptr;
    }
};

/*
    没啥思路，就直接hash表存节点，st存子节点
    最后历遍看看是否又节点不是子节点，如果有就返回该节点
    注意孩子节点也是要放进hash里的

    看题解他们好像也是这样
*/