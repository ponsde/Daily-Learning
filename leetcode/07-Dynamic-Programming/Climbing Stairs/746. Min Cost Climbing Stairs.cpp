#include <vector>

using namespace std;

class Solution
{
public:
    int minCostClimbingStairs(vector<int> &cost)
    {
        int l = cost.size();
        vector<int> cache(l, -1);
        auto dfs = [&](auto &&self, int i)
        {
            if (i >= cost.size())
            {
                return 0;
            }
            if (cache[i] != -1)
            {
                return cache[i] + cost[i];
            }
            int res = min(self(self, i + 1), self(self, i + 2));
            cache[i] = res;
            return cost[i] + res;
        };
        return min(dfs(dfs, 0), dfs(dfs, 1));
    }
};

/*
    想是否能直接在一个dfs里完成从第一个台阶开始和第二个台阶开始，发现我做不到
    然后就分开写，最后取最小值
    返回的时候返回后面的消费加上当前台阶的消费
*/

class Solution
{
public:
    int minCostClimbingStairs(vector<int> &cost)
    {
        int l = cost.size();
        vector<int> cache(l, -1);
        auto dfs = [&](auto &&self, int i)
        {
            if (i >= (int)cost.size())
            {
                return 0;
            }
            if (i >= 0 && cache[i] != -1)
            {
                return cache[i];
            }
            int res = min(self(self, i + 1), self(self, i + 2));
            if (i >= 0)
            {
                cache[i] = res + cost[i];
            }
            return (i == -1 ? 0 : cost[i]) + res;
        };
        return dfs(dfs, -1);
    }
};

/*
    通过建立一个虚拟的-1级台阶，表示站在地面上，然后从-1级台阶开始爬楼梯
    这样就可以在一个dfs里完成从第一个台阶开始和第二个

    需要注意的是i>=cost.size()是，cost.size()返回的是size_t类型，而i是int类型
    直接比较会导致类型转换，从而-1 变成一个很大的正数，导致错误
*/

class Solution
{
public:
    int minCostClimbingStairs(vector<int> &cost)
    {
        int l = cost.size();
        vector<int> f(l + 3);
        f[1] = 0;
        f[2] = 0;
        cost.push_back(0);
        for (int i = 0; i < l + 1; ++i)
        {
            f[i + 2] = min(f[i], f[i + 1]) + cost[i];
        }
        return f[l + 2];
    }
};

/*
    我去，我想半天的递推，然后都不对，突然发现登顶的花费是0，
    而且不在cost中，我就自己补了一个0上去，再看第l+1级台阶就过了
*/

class Solution
{
public:
    int minCostClimbingStairs(vector<int> &cost)
    {
        int l = cost.size();
        vector<int> f(l + 2);
        for (int i = 0; i < l; ++i)
        {
            f[i + 2] = min(f[i], f[i + 1]) + cost[i];
        }
        return min(f[l + 1], f[l]);
    }
};

/*
    问了ai，如果不加哨兵值，结果就应该为min(f[l], f[l-1])
*/