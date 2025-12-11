#include <vector>
#include <numeric>
#include <unordered_set>

using namespace std;

class UnionFind
{
private:
    vector<int> fa;

public:
    int cc;
    UnionFind(int n) : fa(n), cc(n - 1)
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
public:
    int numberOfComponents(vector<vector<int>> &properties, int k)
    {
        int n = properties.size();
        vector<unordered_set<int>> sets(n);
        for (int i = 0; i < n; ++i)
        {
            sets[i] = unordered_set(properties[i].begin(), properties[i].end());
        }
        UnionFind uf(n + 1);
        for (int i = 1; i < n; ++i)
        {

            for (int j = 0; j < i; ++j)
            {
                int cnt = 0;
                for (auto x : sets[j])
                {
                    if (sets[i].count(x))
                    {
                        cnt++;
                    }
                }
                if (cnt >= k)
                {
                    uf.merge(i, j);
                }
            }
        }
        return uf.cc;
    }
};

// 先通过unordered_set存储每个节点的属性，然后两两比较属性交集的大小，若大于等于k则合并节点
// 通过for枚举右，再嵌套for枚举左到右
