#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    bool canPartitionGrid(vector<vector<int>> &grid)
    {
        long long sum = 0;
        for (auto &x : grid)
        {
            for (auto y : x)
            {
                sum += y;
            }
        }

        auto f = [&](const vector<vector<int>> &g)
        {
            int m = g.size();
            int n = g[0].size();
            unordered_set<long long> st{0};

            long long t = 0;

            for (int i = 0; i < m - 1; ++i)
            {
                for (int j = 0; j < n; ++j)
                {
                    t += g[i][j];
                    if (i > 0 || j == 0 || j == n - 1)
                    {
                        st.insert(g[i][j]);
                    }
                }

                if (n == 1)
                {
                    if (t - g[0][0] == sum - t || t - g[i][0] == sum - t || t == sum - t)
                    {
                        return true;
                    }
                    continue;
                }

                if (st.find(2 * t - sum) != st.end())
                    return true;

                if (i == 0)
                {
                    for (int j = 1; j < n - 1; ++j)
                    {
                        st.insert(g[i][j]);
                    }
                }
            }
            return false;
        };

        auto check = [&](vector<vector<int>> &g)
        {
            if (f(g))
                return true;
            reverse(g.begin(), g.end());
            return f(g);
        };

        auto help = [](vector<vector<int>> &g)
        {
            int m = g.size();
            int n = g[0].size();
            vector<vector<int>> t(n, vector<int>(m));
            for (int i = 0; i < m; ++i)
            {
                for (int j = 0; j < n; ++j)
                {
                    t[j][m - 1 - i] = g[i][j];
                }
            }
            return t;
        };

        auto gt = move(help(grid));

        return check(grid) || check(gt);
    }
};

/*
    可以删除一个数
    对于已经历遍的和 s
    如果不删除，那么满足条件的是
    s = sum - s
    如果删除
    s - x = sum - s
    x 就是 2s - sum
    通过st来储存可以删除的
    然后当n == 1特殊处理，只能删除开头的或者分界线上的
    然后是记上半部分历遍完后记得也历遍一次下半部分，通过reverse来实现
*/