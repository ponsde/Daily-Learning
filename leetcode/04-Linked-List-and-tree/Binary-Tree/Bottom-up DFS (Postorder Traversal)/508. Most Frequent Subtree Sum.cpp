#include <vector>
#include <unordered_map>
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
    vector<int> findFrequentTreeSum(TreeNode *root)
    {
        unordered_map<int, int> hash;
        int k = 0;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return 0;
            }
            int sl = self(self, node->left);
            int sr = self(self, node->right);
            hash[sl + sr + node->val]++;
            k = max(k, hash[sl + sr + node->val]);
            return sl + sr + node->val;
        };
        dfs(dfs, root);
        vector<int> ans;
        for (auto [a, b] : hash)
        {
            if (b != k)
            {
                continue;
            }
            ans.push_back(a);
        }
        return ans;
    }
};

// hash记录每个子树和出现的次数，k记录最大出现次数，最后遍历hash把出现次数等于k的子树和加入结果中返回