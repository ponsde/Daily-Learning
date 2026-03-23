#include <bits/stdc++.h>

using namespace std;

struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};

class Solution {
public:
    TreeNode* bstFromPreorder(vector<int>& preorder) {
        int l = preorder.size();
        int idx = 0;
        auto dfs = [&](auto&& self, int left, int right) -> TreeNode*
        {
            if (idx >= l) return nullptr;
            int val = preorder[idx];
            if (val < left || val > right) return nullptr;
            idx++;
            return new TreeNode(val, self(self, left, val), self(self, val + 1, right));

        };
        return dfs(dfs, INT_MIN, INT_MAX);
    }
};

/*
    因为是先序历遍，因此第一个节点就是根节点
    然后往后看，因为左子树是小于val，右子树是大于val的
    然后对于该root，他的左子树要小于他，他的右子树要大于他
    那么就往后看，如果在左子树的范围里，历遍到的要小于他，就把他当作新的root
    如果在左子树范围遇到大于他，就说明有问题，这不应该在左子树，然后nullptr，然后在右子树的里就可以将其囊括进来
*/