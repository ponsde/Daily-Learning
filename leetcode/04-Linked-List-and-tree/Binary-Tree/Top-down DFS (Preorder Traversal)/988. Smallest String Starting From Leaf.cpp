#include <functional>
#include <string>
#include <vector>
#include <algorithm>
#include <climits>

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

class Solution
{
public:
    string smallestFromLeaf(TreeNode *root)
    {
        int mn = INT_MAX;
        vector<string> vec;
        function<void(TreeNode *, string)> dfs = [&](TreeNode *node, string w)
        {
            if (!node)
            {
                return;
            }
            w += node->val + 'a';
            if (!node->left && !node->right)
            {
                reverse(w.begin(), w.end());
                vec.push_back(w);
            }
            else
            {
                dfs(node->left, w);
                dfs(node->right, w);
            }
        };
        dfs(root, "");
        nth_element(vec.begin(), vec.begin(), vec.end());
        return vec.front();
    }
};

// 历遍到叶子节点就将当前字符串反转并存入数组中

class Solution
{
public:
    string smallestFromLeaf(TreeNode *root)
    {
        string ans = "~";
        string path = "";
        function<void(TreeNode *, string &)> dfs = [&](TreeNode *node, string &w)
        {
            if (!node)
            {
                return;
            }
            w += node->val + 'a';
            if (!node->left && !node->right)
            {
                string t = w;
                reverse(t.begin(), t.end());
                ans = min(t, ans);
            }
            else
            {
                dfs(node->left, w);
                dfs(node->right, w);
            }
            w.pop_back();
        };
        dfs(root, path);
        return ans;
    }
};

// 更直观简洁的做法，我感觉元旦3天我脑子锈掉了，做这个做半天...