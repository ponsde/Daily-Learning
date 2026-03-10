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
    vector<vector<int>> closestNodes(TreeNode* root, vector<int>& queries) {
        int l = queries.size();
        vector<int> vec;
        vector<vector<int>> ans;
        auto dfs = [&](auto&& self, TreeNode* node)
        {
            if (!node) return;
            self(self, node->left);
            vec.push_back(node->val);
            self(self, node->right);
        };
        dfs(dfs, root);
        int lv = vec.size();
        for (auto x : queries)
        {
            int j = lower_bound(vec.begin(), vec.end(), x) - vec.begin();
            int a, b;
            if (j == lv)
            {
                b = -1;
                a = vec[j - 1];
            }
            else
            {
                b = vec[j];
                if (x == b)
                {
                    a = b;
                }
                else
                {
                    if (j > 0)
                    {
                        a = vec[j - 1];
                    }
                    else
                    {
                        a = -1;
                    }
                }
            }
            ans.push_back({a, b});
        }
        return ans;
    }
};


/*
 * 感觉自己太迂腐了，遇到搜索二叉树都不愿意外建个vector，之后改改思路
 */
