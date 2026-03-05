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
    void recoverTree(TreeNode* root) {
        TreeNode* pre = nullptr;
        TreeNode* node1 = nullptr;
        TreeNode* node2 = nullptr;
        auto dfs = [&](auto&& self, TreeNode* node)
        {
            if (!node) return;
            self(self, node->left);
            if (pre != nullptr)
            {
                if (!node1 && pre->val > node->val)
                {
                    node1 = pre;
                }
                if (node1 && pre->val > node->val)
                {
                    node2 = node;
                }
            }
            pre = node;
            self(self, node->right);
        };
        dfs(dfs, root);
        swap(node1->val, node2->val);
    }
};


/*
 * 对于搜索树，通过中序历遍，因为交换了两个， 因此会出现前一个大于当前
 * 先出现得的较大的为node1，后面的当前就为node2
 * 通过两个if而不是else if，能判断相邻交换的情况
 *
 * 我是傻子，重做一遍
 */
