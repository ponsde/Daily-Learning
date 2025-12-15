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
    int minTime(int n, vector<vector<int>> &edges, int k)
    {
        auto cmp = [](const vector<int> &a, const vector<int> &b)
        {
            return a[2] > b[2];
        };
        sort(edges.begin(), edges.end(), cmp);
        int le = edges.size();
        UnionFind uf(n);
        for (int i = 0; i < le; ++i)
        {
            uf.merge(edges[i][0], edges[i][1]);
            if (uf.cc < k)
            {
                return edges[i][2];
            }
        }
        return 0;
    }
};

// 正难反易
// 并查集连通简单但删去难
// 反过来考虑，时间从大到小排，当时间最大时，连通块的数目为n
// 随着时间的减少，连通块链接，cc减少，但cc减少<k时
// 说明此时的时间即为所求