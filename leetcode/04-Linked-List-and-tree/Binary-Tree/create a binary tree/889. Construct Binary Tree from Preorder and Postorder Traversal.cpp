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
    TreeNode *constructFromPrePost(vector<int> &preorder, vector<int> &postorder)
    {
        unordered_map<int, int> hash;
        int lp = postorder.size();
        for (int i = 0; i < lp; ++i)
        {
            hash[postorder[i]] = i;
        }
        auto dfs = [&](auto &&self, int pre_l, int pre_r, int post_l) -> TreeNode *
        {
            if (pre_l == pre_r)
                return nullptr;
            if (pre_l + 1 == pre_r)
                return new TreeNode(preorder[pre_l]);

            int left_len = hash[preorder[pre_l + 1]] - post_l + 1;

            return new TreeNode(preorder[pre_l], self(self, pre_l + 1, pre_l + 1 + left_len, post_l),
                                self(self, pre_l + 1 + left_len, pre_r, post_l + left_len));
        };

        return dfs(dfs, 0, lp, 0);
    }
};

/*
    因为对于前序历遍和后续历遍，我们无法分辨该节点在左子树还是右子树
    因此我们将root的右边一个节点当作左root来处理，接着就是找左右子树len然后做

*/