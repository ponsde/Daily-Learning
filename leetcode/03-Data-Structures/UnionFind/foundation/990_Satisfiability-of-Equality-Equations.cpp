#include <vector>
#include <numeric>
#include <string>

using namespace std;

class UnionFind
{
private:
    vector<int> fa;

public:
    UnionFind(int n) : fa(n)
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
    }
};

class Solution
{
public:
    bool equationsPossible(vector<string> &equations)
    {
        UnionFind uf(26);
        int n = equations.size();
        vector<string> vec;
        for (int i = 0; i < n; ++i)
        {
            int x = equations[i][0] - 'a';
            int y = equations[i][3] - 'a';
            if (x == y)
            {
                if (equations[i][1] == '!')
                {
                    return false;
                }
                continue;
            }

            if (equations[i][1] == '!')
            {
                vec.push_back(equations[i]);
                continue;
            }
            uf.merge(x, y);
        }
        int lv = vec.size();
        for (int i = 0; i < lv; ++i)
        {
            int x = vec[i][0] - 'a';
            int y = vec[i][3] - 'a';
            if (x == y || uf.find(x) == uf.find(y))
            {
                return false;
            }
        }
        return true;
    }
};

// 笨方法，先把==的连通起来，再看是否有!=的在一个连通中
// 关键是当x==y时，若为!=，直接返回false
// 否则跳过