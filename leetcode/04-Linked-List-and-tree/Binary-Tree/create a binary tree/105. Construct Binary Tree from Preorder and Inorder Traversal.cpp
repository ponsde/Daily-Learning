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
    TreeNode *buildTree(vector<int> &preorder, vector<int> &inorder)
    {
        int lp = preorder.size();
        int li = inorder.size();
        int i = 0;
        auto dfs = [&](auto &&self, int left, int right) -> TreeNode *
        {
            if (left == right)
                return nullptr;
            int fa = preorder[i];
            int idx = -1;
            for (int j = left; j < right; ++j)
            {
                if (fa == inorder[j])
                {
                    idx = j;
                    break;
                }
            }
            ++i;
            return new TreeNode(fa, self(self, left, idx), self(self, idx + 1, right));
        };

        return dfs(dfs, 0, li);
    }
};

/*
    我去，我竟然做出来了，我真强
    前序历遍实现中间再左右，而中序历遍是先左然后中间右
    因此通过i历遍前序然后找中序，中序的左边就是左子树，右边就是右子树
    然后根据它上一个节点的范围来确定它的左右子树的范围

    判断left == right就行了，如果i == lp的时候，就说明前序结束了，此时中序也到头了


*/