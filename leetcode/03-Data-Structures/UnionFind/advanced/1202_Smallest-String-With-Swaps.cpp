#include <vector>
#include <string>
#include <unordered_set>
#include <unordered_map>
#include <algorithm>
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
    string smallestStringWithSwaps(string s, vector<vector<int>> &pairs)
    {
        int l = s.size();
        int lp = pairs.size();
        UnionFind uf(l);
        unordered_map<int, unordered_set<int>> hash;
        for (int i = 0; i < lp; ++i)
        {
            auto a = pairs[i][0];
            auto b = pairs[i][1];
            uf.merge(a, b);
        }
        for (int i = 0; i < lp; ++i)
        {
            auto a = pairs[i][0];
            auto b = pairs[i][1];
            hash[uf.find(a)].insert(a);
            hash[uf.find(b)].insert(b);
        }
        string ans = s;
        for (auto &[_, idxs] : hash)
        {
            vector<int> t1;
            vector<char> t2;
            for (auto m : idxs)
            {
                t1.push_back(m);
                t2.push_back(s[m]);
            }
            int l = t1.size();
            sort(t1.begin(), t1.end());
            sort(t2.begin(), t2.end());
            for (int i = 0; i < l; ++i)
            {
                ans[t1[i]] = t2[i];
            }
        }
        return ans;
    }
};

// 因为能交换任意次，所以等价于连通分量内的字符可以任意交换，因此只需要对每个连通分量内的字符排序后放回即可
// 但需要注意的是不能边merge边往hash中放入
// 因为merge会改变find的结果，导致hash中的key不正确
// 比如[[0,3],[1,2],[0,2]]
// 0和3合并，hash为3，1和2合并，hash为2
// 然后find(0)为3，3跟2合并，此时3的环融入了2的环，原先的hash[3]就不应该有
// 所以需要先merge完所有的pair，再根据最终的find结果放入hash中
// 这样放入hash的才是最终每个的环

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
    string smallestStringWithSwaps(string s, vector<vector<int>> &pairs)
    {
        int l = s.size();
        int lp = pairs.size();
        UnionFind uf(l);
        unordered_map<int, vector<int>> hash;
        for (int i = 0; i < lp; ++i)
        {
            auto a = pairs[i][0];
            auto b = pairs[i][1];
            uf.merge(a, b);
        }
        for (int i = 0; i < l; ++i)
        {
            hash[uf.find(i)].push_back(i);
        }
        string ans = s;
        for (auto &[_, idxs] : hash)
        {
            vector<int> &t1 = idxs;
            vector<char> t2;
            for (auto m : idxs)
            {
                t2.push_back(s[m]);
            }
            sort(t2.begin(), t2.end());
            int l = t1.size();
            for (int i = 0; i < l; ++i)
            {
                ans[t1[i]] = t2[i];
            }
        }
        return ans;
    }
};

// 优化，因为在放入hash是选择了顺序历遍，因此idxs本身就是有序的，只需要排序t2
// 而且可以只用vector而不是unordered_set，速度更快