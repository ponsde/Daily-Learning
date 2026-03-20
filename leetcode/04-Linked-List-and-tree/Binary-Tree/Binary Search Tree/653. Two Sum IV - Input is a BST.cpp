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
    bool findTarget(TreeNode* root, int k) {
        vector<int> vec;
        auto dfs = [&](auto&& self, TreeNode* node)
        {
            if (!node) return;
            self(self, node->left);
            vec.push_back(node->val);
            self(self, node->right);
        };
        unordered_map<int, int> hash;
        dfs(dfs, root);
        for (auto x : vec)
        {
            auto it = hash.find(k - x);
            if (it != hash.end()) return true;
            hash[x]++;
        }
        return false;
    }
};

/*
 * 使用vector外接然后历遍，时间复杂度不是最优的
 */

class Solution {
public:
    bool findTarget(TreeNode* root, int k) {
        unordered_map<int, int> hash;
        auto dfs = [&](auto&& self, TreeNode* node)
        {
            if (!node) return false;
            if (self(self, node->left)) return true;
            auto it = hash.find(k - node->val);
            if (it != hash.end()) return true;
            hash[node->val]++;

            return self(self, node->right) || false;
        };

        return dfs(dfs, root);
    }
};

/*
 * 换了一种思路，直接在历遍的时候存hash，然后通过return true来提前返回
 */
