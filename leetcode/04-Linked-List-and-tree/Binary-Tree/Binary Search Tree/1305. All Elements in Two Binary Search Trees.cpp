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
    vector<int> getAllElements(TreeNode* root1, TreeNode* root2) {
        vector<int> vec1;
        vector<int> vec2;
        auto dfs = [&](auto&& self, TreeNode* node, vector<int>& vec)
        {
            if (!node) return;
            self(self, node->left, vec);
            vec.push_back(node->val);
            self(self, node->right, vec);
        };
        dfs(dfs, root1, vec1);
        dfs(dfs, root2, vec2);
        int l1 = vec1.size();
        int l2 = vec2.size();
        vector<int> ans;
        int i = 0;
        int j = 0;
        while (1)
        {
            if (i == l1 || j == l2)
            {
                if (i == l1)
                {
                    for (int k = j; k < l2; ++k)
                    {
                        ans.push_back(vec2[k]);
                    }
                }
                else
                {
                    for (int k = i; k < l1; ++k)
                    {
                        ans.push_back(vec1[k]);
                    }
                }
                break;
            }

            if (vec1[i] < vec2[j])
            {
                ans.push_back(vec1[i]);
                ++i;
            }
            else
            {
                ans.push_back(vec2[j]);
                ++j;
            }
        }
        return ans;
    }
};

/*
 * 想了挺久怎么在历遍的同时合并，然后发现很多都是直接拿出两个列表存储然后归并，因为顺序已经排好直接历遍归并了
 * 也有看到题解是历遍的途中中栈来保存状态来进行历遍时归并，回头试试
 */
