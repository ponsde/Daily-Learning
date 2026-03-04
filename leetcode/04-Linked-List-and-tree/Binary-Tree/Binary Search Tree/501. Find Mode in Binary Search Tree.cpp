/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode() : val(0), left(nullptr), right(nullptr) {}
 *     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
 *     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 * };
 */
class Solution {
public:
    vector<int> findMode(TreeNode* root) {
        int pre = INT_MIN / 2;
        int cnt = 0;
        int max_cnt = 0;
        vector<int> ans;
        auto dfs = [&](auto&& self, TreeNode* node)
        {
            if (!node)
            {
                return;
            }
            self(self, node->left);
            if (pre == INT_MIN / 2) pre = node->val;
            if (pre != node->val)
            {
                cnt = 1;
            }
            else
            {
                cnt++;
            }
            pre = node->val;
            if (cnt == max_cnt)
            {
                ans.push_back(pre);
            }
            else if (cnt > max_cnt)
            {
                ans.clear();
                ans.push_back(pre);
                max_cnt = cnt;
            }


            self(self, node->right);
        };
        dfs(dfs, root);
        return ans; 
    }
};

/*
 *我感觉我像个傻子啥都做不出来...再做一遍
 */
