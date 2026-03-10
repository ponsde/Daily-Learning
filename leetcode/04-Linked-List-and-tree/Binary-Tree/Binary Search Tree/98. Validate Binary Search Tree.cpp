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

class Solution {
public:
    bool isValidBST(TreeNode* root) {
        vector<int> ans;
        auto dfs = [&](auto&& self, TreeNode* node)
        {

            if (!node) return;
            self(self, node->left);
            ans.push_back(node->val);
            self(self, node->right);
        };
        dfs(dfs, root);
        vector<int> t = ans;
        sort(t.begin(), t.end());
        t.erase(unique(t.begin(), t.end()), t.end());
        return ans == t;
    }
};

/*
 * 利用了二叉搜索树中序历遍会是从小到大
 * 原本想试着不用额外空间，结果我还是太菜了不行
 * sort判断是否递增，unique判断是否有重复
 */	

class Solution {
    long long pre = LONG_MIN;
public:
    bool isValidBST(TreeNode* root) {
        if (!root) return true;
        if (!isValidBST(root->left))
        {
            return false;
        }
        if (pre >= root->val) return false;
        pre = root->val;
        return isValidBST(root->right);
    }
};

/*
 * 看了灵神的写法，发现跟我之前的想法一样，那时候应该多想想的
 * pre用LONG_MIN是因为当最左下角也就是数组的第一个为INT_MIN时，不应该大于等于它，因此要选一个必定会小于任意的int的数
 */

class Solution {
public:
    bool isValidBST(TreeNode* root) {
        TreeNode* pre = nullptr;
        auto dfs = [&](auto&& self, TreeNode* node)
        {
            if (!node) return true;
            if (self(self, node->left))
            {
                if (pre == nullptr)
                {
                    pre = node;
                    return true && self(self, node->right);
                }
                else
                {
                    if (pre->val < node->val)
                    {
                        pre = node;
                        return self(self, node->right);
                    }

                    return false;
                }

            }
            return false;
        };
        return dfs(dfs, root);
    }
};

/*
 * 自己做，本以为错了结果过了，第二遍做还是能收获，可以再做第三遍
 * 验证搜索二叉树采用中序历遍比较好
 * 对于一个节点，先看左，如果左返回true，说明左边符合，那么就看当前，如果当前符合在看右，如果右符合
 * 那么就返回true表示当前的树合格
 */
