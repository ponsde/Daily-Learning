#include <vector>
#include <unordered_map>
#include <numeric>

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

class Solution {
public:
    int minimumHammingDistance(vector<int>& source, vector<int>& target, vector<vector<int>>& allowedSwaps) {
        int la = allowedSwaps.size();
        int l = source.size();
        UnionFind uf(l);
        for (int i = 0; i < la; ++i)
        {
            uf.merge(allowedSwaps[i][0], allowedSwaps[i][1]);
        }
        unordered_map<int, unordered_map<int, int>> hash;
        for (int i = 0; i < l; ++i)
        {
            hash[uf.find(i)][source[i]]++;
        }
        int cnt = 0;
        for (int i = 0; i < l; ++i)
        {
            auto it = hash[uf.find(i)].find(target[i]);
            if (it != hash[uf.find(i)].end() && it->second > 0)
            {
                it->second--;
                continue;
            }
            cnt++;
        }
        return cnt;
    }
};


// 不算难，看到能无限换就想到环然后就是并查集
// 交换的merge后然后再历遍source，将环内下标的数加入同一个环
// 然后通过查看target的数在环内是否存在来决定汉明距离是否+1
