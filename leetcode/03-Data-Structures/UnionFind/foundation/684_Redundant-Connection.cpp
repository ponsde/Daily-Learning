#include <vector>
#include <numeric>

using namespace std;

class UnionFind
{
private:
    vector<int> fa;
    vector<int> sz;

public:
    int cc;
    UnionFind(int n) : fa(n), sz(n, 1), cc(n)
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

    bool is_same(int x, int y)
    {
        return find(x) == find(y);
    }

    bool merge(int from, int to)
    {
        int x = find(from);
        int y = find(to);
        if (x == y)
        {
            return false;
        }
        fa[x] = fa[y];
        sz[y] += sz[x];
        cc--;
        return true;
    }

    int get_size(int x)
    {
        return sz[find(x)];
    }
};

class Solution
{
public:
    vector<int> findRedundantConnection(vector<vector<int>> &edges)
    {
        int n = edges.size();
        UnionFind uf(n + 1);
        vector<vector<int>> ans;
        for (int i = 0; i < n; ++i)
        {
            int x = edges[i][0];
            int y = edges[i][1];
            bool check = uf.merge(x, y);
            if (check == false)
            {
                ans.push_back(edges[i]);
            }
        }
        return ans.back();
    }
};

// 并查集的简单应用，当发现两个节点已经连通时，说明该边是多余的边