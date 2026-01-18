#include <string>
#include <tuple>
#include <algorithm>

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
    string getDirections(TreeNode *root, int startValue, int destValue)
    {
        string spath;
        string epath;
        auto find_start = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return false;
            }
            if (node->val == startValue)
            {
                return true;
            }
            bool b_l = self(self, node->left);
            bool b_r = self(self, node->right);
            if (b_l || b_r)
            {
                spath += 'U';
            }
            return b_l || b_r;
        };

        auto find_end = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return false;
            }
            if (node->val == destValue)
            {
                return true;
            }
            bool b_l = self(self, node->left);
            bool b_r = self(self, node->right);
            if (b_l || b_r)
            {
                epath += b_l ? 'L' : 'R';
            }
            return b_l || b_r;
        };

        auto dfs = [&](auto &&self, TreeNode *node) -> tuple<bool, bool>
        {
            if (!node)
            {
                return {false, false};
            }
            if (node->val == startValue)
            {
                bool fe = find_end(find_end, node);
                if (!fe)
                {
                    return {true, false};
                }
                return {false, false};
            }
            if (node->val == destValue)
            {
                bool fs = find_start(find_start, node);
                if (!fs)
                {
                    return {false, true};
                }
                return {false, false};
            }
            auto [s_l, e_l] = self(self, node->left);
            auto [s_r, e_r] = self(self, node->right);
            if (s_l && e_r || e_l && s_r)
            {
                find_start(find_start, node);
                find_end(find_end, node);
            }
            return {s_l || s_r, e_l || e_r};
        };
        dfs(dfs, root);
        reverse(epath.begin(), epath.end());
        return spath + epath;
    }
};

/*
    通过3个lambda函数实现，一个用于寻找start节点，一个用于寻找end节点，另一个用于遍历整棵树寻找公共祖先节点。
    当找到start节点时，调用寻找end节点的lambda函数，如果找到就说明要从start节点出发到达end节点，不需要继续遍历。
    同理，当找到end节点时，调用寻找start节点的lambda函数，如果找到就说明要从end节点出发到达start节点，不需要继续遍历。
    否则继续遍历左右子树，当左右子树分别找到start和end节点时，说明当前节点是公共祖先节点，分别调用寻找start和end节点的lambda函数记录路径
    最后将end节点的路径反转并拼接到start节点路径后返回。
*/

class Solution
{
public:
    string getDirections(TreeNode *root, int startValue, int destValue)
    {
        string spath;
        string epath;
        string path;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!spath.empty() && !epath.empty())
            {
                return;
            }
            if (!node)
            {
                return;
            }
            if (node->val == startValue || node->val == destValue)
            {
                node->val == startValue ? spath = path : epath = path;
            }
            path += 'L';
            self(self, node->left);
            path.pop_back();
            path += 'R';
            self(self, node->right);
            path.pop_back();
        };
        dfs(dfs, root);
        auto it = mismatch(spath.begin(), spath.end(), epath.begin(), epath.end());
        string ans;
        int ls = spath.size();
        int le = epath.size();
        for (auto i = it.first; i != spath.end(); ++i)
        {
            ans += 'U';
        }
        for (auto i = it.second; i != epath.end(); ++i)
        {
            ans += *i;
        }
        return ans;
    }
};

/*
    另一种方法，通过找出root到start节点和dest节点的路径，然后找出两条路径的最长公共前缀
    去掉公共前缀后，start节点路径剩下的部分全部转换为'U'，然后拼接上dest节点路径剩下的部分即为最终路径
    再做一遍
*/