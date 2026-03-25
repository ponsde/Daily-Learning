#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    bool canPartitionGrid(vector<vector<int>> &grid)
    {
        long long sum = 0;
        int m = grid.size();
        int n = grid[0].size();
        vector<vector<long long>> s(m + 1, vector<long long>(n + 1));
        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                s[i + 1][j + 1] = s[i + 1][j] + s[i][j + 1] - s[i][j] + grid[i][j];
                sum += grid[i][j];
            }
        }
        for (int i = 0; i < m; ++i)
        {
            if (s[i][n] == sum - s[i][n])
                return true;
        }
        for (int j = 0; j < n; ++j)
        {
            if (s[m][j] == sum - s[m][j])
                return true;
        }
        return false;
    }
};

/*
    第一反应是前缀和，然后对了，但是似乎不是最好的，灵神的做法是一行行看，然后翻转矩阵
*/

class Solution
{
public:
    bool canPartitionGrid(vector<vector<int>> &grid)
    {
        int m = grid.size();
        int n = grid[0].size();
        auto help = [&]()
        {
            vector<vector<int>> b(n, vector<int>(m));
            for (int i = 0; i < m; ++i)
            {
                for (int j = 0; j < n; ++j)
                {
                    b[j][m - 1 - i] = grid[i][j];
                }
            }
            return b;
        };
        long long sum = 0;
        for (int i = 0; i < m; ++i)
        {
            sum += accumulate(grid[i].begin(), grid[i].end(), 0LL);
        }
        auto check = [&](const vector<vector<int>> &g)
        {
            long long t = 0;
            int lm = g.size();
            for (int i = 0; i < lm; ++i)
            {
                t += accumulate(g[i].begin(), g[i].end(), 0LL);
                if (t == sum - t)
                    return true;
            }
            return false;
        };
        return check(grid) || check(help());
    }
};

/*
    这里的反转是通用的，第 i 行 第 j 个会翻转到第 j 行 第 m - 1 - i 个
    跟正方形的对角线反转和行交换的区别是，那个是没有额外空间但需要是正方形，这个是需要额外空间但不要求是正方形
*/
