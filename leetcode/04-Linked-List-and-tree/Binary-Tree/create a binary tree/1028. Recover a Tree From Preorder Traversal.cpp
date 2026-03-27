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

class Solution
{
public:
    TreeNode *recoverFromPreorder(string traversal)
    {
        int i = 0;
        int lt = traversal.size();
        auto dfs = [&](auto &&self, int dep) -> TreeNode *
        {
            if (i == lt)
                return nullptr;
            int cnt_dep = 0;
            int or_i = i;
            while (traversal[i] == '-')
            {
                cnt_dep++;
                ++i;
            }
            if (dep + 1 != cnt_dep)
            {
                i = or_i;
                return nullptr;
            }
            int val = 0;
            while (i < lt && traversal[i] != '-')
            {
                val *= 10;
                val += traversal[i++] - '0';
            }
            return new TreeNode(val, self(self, cnt_dep), self(self, cnt_dep));
        };
        return dfs(dfs, -1);
    }
};

/*
    哇哈哈哈，我做出来了
    给了前序历遍和每一个对应的深度
    那么通过i来记录全局的指针
    局部变量idx 记录 i
    然后对于每一个，先看当前的深度是否等于上一个的深度加一，如果不等于，那么说明这个节点不是当前节点的子节点
    因此将i恢复，返回nullptr
    如果等于，那么说明这个节点是当前节点的子节点
    那么通过一个while将这个val计算出来
    因为是前序历遍，所以先左后右
*/