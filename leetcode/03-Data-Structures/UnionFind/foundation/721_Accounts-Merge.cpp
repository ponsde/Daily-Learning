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
    vector<vector<string>> accountsMerge(vector<vector<string>> &accounts)
    {
        vector<string> names;
        int la = accounts.size();
        vector<unordered_set<string>> emails(la);
        for (int i = 0; i < la; ++i)
        {
            names.push_back(accounts[i][0]);
            int le = accounts[i].size();
            for (int j = 1; j < le; ++j)
            {
                emails[i].insert(accounts[i][j]);
            }
        }
        UnionFind uf(names.size());
        vector<pair<int, int>> vec;
        vector<vector<string>> ans;
        for (int i = 1; i < la; ++i)
        {
            for (int j = 0; j < i; ++j)
            {
                for (auto x : emails[j])
                {
                    if (emails[i].count(x))
                    {
                        uf.merge(j, i);
                    }
                }
            }
        }
        unordered_map<int, vector<int>> hash;
        for (int i = 0; i < la; ++i)
        {
            hash[uf.find(i)].push_back(i);
        }
        for (auto [a, b] : hash)
        {
            unordered_set<string> k;
            int lb = b.size();
            vector<string> t;
            t.push_back(accounts[a][0]);
            for (int i = 0; i < lb; ++i)
            {
                int m = b[i];
                k.insert(emails[m].begin(), emails[m].end());
            }
            vector<string> vt;
            for (auto y : k)
            {
                vt.push_back(y);
            }
            sort(vt.begin(), vt.end());
            t.insert(t.end(), vt.begin(), vt.end());
            ans.push_back(t);
        }
        return ans;
    }
};

// 我第一次写的写法，第一反应是先储存每个账户的邮箱，然后两两比较，若有重叠就将所有人并在一起
// 但这样效率太低了，虽然能过但2000多ms

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
    vector<vector<string>> accountsMerge(vector<vector<string>> &accounts)
    {
        int la = accounts.size();
        unordered_map<string, int> hash;
        UnionFind uf(la);
        for (int i = 0; i < la; ++i)
        {
            int lt = accounts[i].size();
            for (int j = 1; j < lt; ++j)
            {
                auto it = hash.find(accounts[i][j]);
                if (it == hash.end())
                {
                    hash[accounts[i][j]] = i;
                }
                else
                {
                    uf.merge(i, it->second);
                }
            }
        }
        vector<vector<string>> ans;
        unordered_map<int, vector<string>> um;
        for (auto &[emali, owner] : hash)
        {
            um[uf.find(owner)].push_back(emali);
        }
        for (auto &[owner, emalis] : um)
        {
            vector<string> t;
            t.push_back(accounts[owner][0]);
            sort(emalis.begin(), emalis.end());
            t.insert(t.end(), emalis.begin(), emalis.end());
            ans.push_back(t);
        }
        return ans;
    }
};

// 修改了下思路，使用哈希表记录每个邮箱对应的账户
// 若是遇到重复的邮箱，就将两个账户合并
// 最后再根据并查集的结果整理出答案
// 时间就三十多ms了
