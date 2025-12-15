#include <vector>
#include <numeric>
#include <algorithm>

using namespace std;

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
public:
    int minCost(int n, vector<vector<int>> &edges, int k)
    {
        UnionFind uf(n);
        auto cmp = [](const vector<int> &a, const vector<int> &b)
        {
            return a[2] < b[2];
        };
        sort(edges.begin(), edges.end(), cmp);
        int le = edges.size();
        if (uf.cc <= k)
        {
            return 0;
        }
        for (int i = 0; i < le; ++i)
        {
            uf.merge(edges[i][0], edges[i][1]);
            if (uf.cc <= k)
            {
                return edges[i][2];
            }
        }
        return -1;
    }
};

// 同样正难反易
// 找最小连通分量的最大成本的最小值
// 则排序成本，从小到大合并，若是连通分量小于等于k，则返回当前成本即可