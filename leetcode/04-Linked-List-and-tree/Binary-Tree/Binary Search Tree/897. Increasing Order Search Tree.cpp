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
    TreeNode* increasingBST(TreeNode* root) {
        TreeNode dummy(0, nullptr, nullptr);
        auto head = &dummy;
        auto dfs = [&](auto&& self, TreeNode* node)
        {
            if (!node) return;
            self(self, node->left);
            head->right = new TreeNode(node->val);
            head = head->right;
            self(self, node->right);
        };
        dfs(dfs, root);
        return dummy.right;
    }
};

/*
 *
 * 终于自己做了一道出来...
 */
