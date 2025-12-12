#include <vector>
#include <algorithm>
#include <numeric>

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
class UnionFind
{
private:
    vector<int> fa;

public:
    int cc;
    UnionFind(int n) : fa(n), cc(n)
    {
        iota(fa.begin(), fa.end(), 0);
    }

    int find(int x)
    {
        if (fa[x] != x)
        {
            fa[x] = find(fa[x]);
        }
        return fa[x];
    }

    void merge(int from, int to)
    {
        int x = find(from);
        int y = find(to);
        if (x == y)
        {
            return;
        }
        fa[x] = y;
        cc--;
    }
};

class Solution
{
    void help(TreeNode *node, vector<vector<int>> &vec, int row)
    {
        if (node == nullptr)
        {
            return;
        }
        if (row > vec.size())
        {
            vec.resize(row);
        }
        vec[row - 1].push_back(node->val);
        help(node->left, vec, row + 1);
        help(node->right, vec, row + 1);
    }

public:
    int minimumOperations(TreeNode *root)
    {
        vector<vector<int>> vec;
        help(root->left, vec, 1);
        help(root->right, vec, 1);
        int ans = 0;
        int l = vec.size();
        for (int i = 0; i < l; ++i)
        {
            int lv = vec[i].size();
            vector<pair<int, int>> t;
            UnionFind uf(lv);
            for (int j = 0; j < lv; ++j)
            {
                t.push_back(make_pair(vec[i][j], j));
            }
            sort(t.begin(), t.end());
            for (int j = 0; j < lv; ++j)
            {
                uf.merge(j, t[j].second);
            }
            ans += lv - uf.cc;
        }
        return ans;
    }
};

// 跟3551基本一样，区别只是这里是数的层级
// 我向函数传递vec，若是层级大于vec的size，则扩展resize
// 先将数左边的值放入，再放右边，这样每一层的vec就是从左到右的顺序
// 然后对每一层的vec进行排序，排序前后下标不同的进行合并
// 最后每一层的最小交换次数就是该层节点数减去连通分量数，累加到答案中返回