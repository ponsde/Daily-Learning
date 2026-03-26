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
    TreeNode *buildTree(vector<int> &inorder, vector<int> &postorder)
    {
        int li = inorder.size();
        int lp = postorder.size();
        int i = lp - 1;
        unordered_map<int, int> hash;
        for (int i = 0; i < li; ++i)
        {
            hash[inorder[i]] = i;
        }
        auto dfs = [&](auto &&self, int left, int right) -> TreeNode *
        {
            if (left == right)
                return nullptr;
            int m = postorder[i];
            int idx = hash[m];
            --i;
            TreeNode *root = new TreeNode(m);
            root->right = self(self, idx + 1, right);
            root->left = self(self, left, idx);
            return root;
        };
        return dfs(dfs, 0, li);
    }
};

/*
    哇哈哈又做出来了
    对于后续历遍，是左右中
    因此我们i从后往前走的时候，对应的root是从右子树的root开始的
    因此就没法直接return new 这样一次性构造，需要在中间先递归右子树再递归左子树
    这样就能保证每次构造的root都是正确的了

    用hash表存下表这样O(1)找到idx了，一个优化
*/

class Solution
{
public:
    TreeNode *buildTree(vector<int> &inorder, vector<int> &postorder)
    {
        int li = inorder.size();
        unordered_map<int, int> hash;
        for (int j = 0; j < li; ++j)
        {
            hash[inorder[j]] = j;
        }
        auto dfs = [&](auto &&self, int p_l, int p_r, int i_l) -> TreeNode *
        {
            if (p_l == p_r)
                return nullptr;

            int left_len = hash[postorder[p_r - 1]] - i_l;

            return new TreeNode(postorder[p_r - 1], self(self, p_l, p_l + left_len, i_l),
                                self(self, p_l + left_len, p_r - 1, i_l + left_len + 1));
        };
        return dfs(dfs, 0, postorder.size(), 0);
    }
};

/*
    对于一个post区间，right - 1对应的就是root
    然后在中序中找，就能知道左子树的大小，那么就可以将post分为左右子树再次循环
    然后左子树在post中，沿用父级的p_l，而右子树，因为左闭右开，那么直接p_l + left_len就好了，然后是i_l，i_l对于左子树在中序历遍的起点，那么沿用即可
    而在右子树中，p_l是p_l + left_len，而p_r，因为父级的p_r被用作root了，那么新的p_r应该-1，然后是i_l，因为左子树的起点是i_l，如果是i_l + left_len
    那么就是父级root的位置，那么需要再+1才能到右子树的起点了
*/