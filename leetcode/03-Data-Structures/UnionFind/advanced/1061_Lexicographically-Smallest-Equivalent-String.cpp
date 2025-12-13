#include <vector>
#include <string>
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

class Solution
{
public:
    string smallestEquivalentString(string s1, string s2, string baseStr)
    {
        int ls = s1.size();
        UnionFind uf(26);
        for (int i = 0; i < ls; ++i)
        {
            uf.merge(s1[i] - 'a', s2[i] - 'a');
        }
        unordered_map<int, vector<char>> hash;
        for (int i = 0; i < 26; ++i)
        {
            hash[uf.find(i)].push_back(i + 'a');
        }
        int lb = baseStr.size();
        for (int i = 0; i < lb; ++i)
        {
            baseStr[i] = hash[uf.find(baseStr[i] - 'a')][0];
        }
        return baseStr;
    }
};

// 感觉我有点找到感觉了，这种连通题设计成环的这种感觉用并查集很舒服
// 先历遍s1、s2，将对应位置的字符连成环
// 然后按顺序历遍26个字母，这样压入vector的顺序就是从小到大，直接取最小的即可
// 我变强了