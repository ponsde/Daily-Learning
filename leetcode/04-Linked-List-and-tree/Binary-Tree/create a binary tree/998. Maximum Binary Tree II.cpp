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
    TreeNode* insertIntoMaxTree(TreeNode* root, int val) {
        if (!root || root->val < val)
        {
            return new TreeNode(val, root, nullptr);
        }
        auto dfs = [&](auto&& self, TreeNode* node, TreeNode* pre)
        {
            if (!node) return false;
            if (node->val < val)
            {
                pre->right = new TreeNode(val, node, nullptr);
                return true;
            }
            if (self(self, node->right, node)) return true;
            if (node->val > val && node->right == nullptr)
            {
                node->right = new TreeNode(val, nullptr, nullptr);
                return true;
            }

            return false;
        };
        dfs(dfs, root, nullptr);
        return root;
        
    }
};

/*
 * 我们获取个一个数组的最大数
 * 然后在该数组插入了一个val在最右边
 * 那么就有两种可能，第一种是这个val在路径的中间，此时我们通过if (node->val < val)来进行
 * 若是没有，那么思考一下，他就只能在最右下角，那么我们先判断是否能走到最右下角
 * 如果能走到，就说明需要在最右下角插一个node
 */
