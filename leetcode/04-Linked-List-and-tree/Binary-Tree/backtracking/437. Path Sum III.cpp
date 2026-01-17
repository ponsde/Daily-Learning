#include <unordered_map>

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
    int pathSum(TreeNode *root, int targetSum)
    {
        unordered_map<long long, int> hash;
        hash[0] = 1;
        int ans = 0;
        long long sum = 0;
        auto dfs = [&](auto &&self, TreeNode *node)
        {
            if (!node)
            {
                return;
            }
            sum += node->val;
            if (hash.find(sum - targetSum) != hash.end())
            {
                ans += hash[sum - targetSum];
            }
            hash[sum]++;
            self(self, node->left);
            self(self, node->right);
            hash[sum]--;
            sum -= node->val;
        };
        dfs(dfs, root);
        return ans;
    }
};

// 算是另类的2数之和，这里应该叫两数之差
// 通过长路径的sum找对应的短路径，若是存在这种值得短路径，说明两者之差即为targetSum，即找到了符合条件的路径