#include <vector>
#include <tuple>
#include <algorithm>
#include <numeric>

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
    int sum(int x)
    {
        int t = 0;
        while (x > 0)
        {
            t += x % 10;
            x /= 10;
        }
        return t;
    }

public:
    int minSwaps(vector<int> &nums)
    {
        int l = nums.size();
        vector<tuple<int, int, int>> vec;
        UnionFind uf(l);
        for (int i = 0; i < l; ++i)
        {
            int m = nums[i];
            vec.push_back(make_tuple(sum(m), m, i));
        }
        sort(vec.begin(), vec.end());
        for (int i = 0; i < l; ++i)
        {
            auto [a, b, c] = vec[i];
            uf.merge(i, c);
        }
        return l - uf.cc;
    }
};

// 通过tuple取，效率更好

// 这题的关键是排序后原位置与新位置的关系
// 假设     2341
// 排序后为 1234
// 那么看索引，原本0->1,1->2,2->3,3->0
// 形成一个环，环的长度为4，那么要排序需要4-1=3次交换
// 这是不是最简的呢？是，假设中间有个数不用交换，说明它的位置已经正确了，那不应该该环里
// 而这样，就可以用并查集了，设计连通
