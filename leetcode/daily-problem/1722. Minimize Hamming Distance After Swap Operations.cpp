#include <bits/stdc++.h>

using namespace std;

class Solution
{
    vector<int> fa;
    int find(int x)
    {
        if (x != fa[x])
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
            return;
        fa[x] = y;
    }

public:
    int minimumHammingDistance(vector<int> &source, vector<int> &target, vector<vector<int>> &allowedSwaps)
    {
        int l = source.size();
        fa.resize(l);
        iota(fa.begin(), fa.end(), 0);
        for (auto x : allowedSwaps)
        {
            merge(x[0], x[1]);
        }
        unordered_map<int, multiset<int>> hash;
        for (int i = 0; i < l; ++i)
        {
            hash[find(i)].insert(source[i]);
        }
        int ans = 0;
        for (int i = 0; i < l; ++i)
        {
            int tar = target[i];
            int des = find(i);
            auto it = hash[des].find(tar);
            if (it == hash[des].end())
            {
                ans++;
            }
            else
            {
                hash[des].erase(it);
            }
        }
        return ans;
    }
};

/*
    简单的每日吧，并查集，因为可以任意次数的交换
    然后对于每一个索引找他对应的集合，看这个集合里有没有目标值，如果没有就加一，如果有就删除这个值
*/