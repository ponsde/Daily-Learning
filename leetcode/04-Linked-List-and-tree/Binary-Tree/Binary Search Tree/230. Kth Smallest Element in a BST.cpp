#include <bits.stdc++.h>

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

class Solution {
public:
    int kthSmallest(TreeNode* root, int k) {
        priority_queue<int> pq;
        auto dfs = [&](auto&& self, TreeNode* node)
        {
            if (!node) return;
            pq.push(node->val);
            if (pq.size() > k) pq.pop();
            self(self, node->left);
            self(self, node->right);
        };
        dfs(dfs, root);
        return pq.top();
    }
};

/*
 *
 * 看到了第k小就下意识用堆来做，但他是搜索二叉树，那么想想怎么利用起来
 *
 */

class Solution {
public:
    int kthSmallest(TreeNode* root, int k) {
        int cnt = 0;
        int ans = 0;
        auto dfs = [&](auto&& self, TreeNode* node)
        {
            if (!node) return;
            self(self, node->left);
            cnt++;
            if (cnt == k)
            {
                ans = node->val;
                return;
            }
            self(self, node->right);
        };
        dfs(dfs, root);
        return ans;
    }
};

/*
 * 用上了搜索二叉树的性质，选择第k小，那么就中序历遍，第k个数就是第k小，搜索二叉树好像中序历遍最常用
 */
