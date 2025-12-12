#include <vector>
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

    bool merge(int from, int to)
    {
        int x = find(from);
        int y = find(to);
        if (x == y)
        {
            return false;
        }
        fa[x] = y;
        return true;
    }
};

class Solution
{
public:
    vector<bool> pathExistenceQueries(int n, vector<int> &nums, int maxDiff, vector<vector<int>> &queries)
    {
        UnionFind uf(n);
        int l = nums.size();
        for (int i = 0; i < l; ++i)
        {
            int left = lower_bound(nums.begin(), nums.end(), nums[i] - maxDiff) - nums.begin();
            int right = lower_bound(nums.begin(), nums.end(), maxDiff + nums[i] + 1) - nums.begin();
            for (int j = left; j < right; ++j)
            {
                if (i == j)
                {
                    continue;
                }
                uf.merge(i, j);
            }
        }
        int lq = queries.size();
        vector<bool> ans;
        for (int i = 0; i < lq; ++i)
        {
            if (uf.find(queries[i][0]) == uf.find(queries[i][1]))
            {
                ans.push_back(true);
            }
            else
            {
                ans.push_back(false);
            }
        }
        return ans;
    }
};

// 最开始看到非递减，想到的是二分，但二分的复杂度太高了

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

    bool merge(int from, int to)
    {
        int x = find(from);
        int y = find(to);
        if (x == y)
        {
            return false;
        }
        fa[x] = y;
        return true;
    }
};

class Solution
{
public:
    vector<bool> pathExistenceQueries(int n, vector<int> &nums, int maxDiff, vector<vector<int>> &queries)
    {
        UnionFind uf(n);
        int l = nums.size();
        for (int i = 0; i < l - 1; ++i)
        {
            if (nums[i + 1] - nums[i] <= maxDiff)
            {
                uf.merge(i, i + 1);
            }
        }
        int lq = queries.size();
        vector<bool> ans;
        for (int i = 0; i < lq; ++i)
        {
            if (uf.find(queries[i][0]) == uf.find(queries[i][1]))
            {
                ans.push_back(true);
            }
            else
            {
                ans.push_back(false);
            }
        }
        return ans;
    }
};

// 换个思路，若是nums[i + 1] - nums[i] <= maxDiff，则i跟i+1是连通的
// 若是i跟i+2也连通，那么i+1也必然连通，若是不连通，则i+1就是一个全新的开始