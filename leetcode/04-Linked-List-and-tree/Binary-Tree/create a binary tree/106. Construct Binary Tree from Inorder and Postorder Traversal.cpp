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