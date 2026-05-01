#include <bits/stdc++.h>

using namespace std;

class Solution
{
    const int DIR[7][2][2] =
        {
            {},
            {{0, 1}, {0, -1}},
            {{1, 0}, {-1, 0}},
            {{0, -1}, {1, 0}},
            {{0, 1}, {1, 0}},
            {{0, -1}, {-1, 0}},
            {{0, 1}, {-1, 0}}};

    bool can_reach(int dir, int dx, int dy)
    {
        auto &ds = DIR[dir];
        return (ds[0][0] == dx && ds[0][1] == dy) || (ds[1][0] == dx && ds[1][1] == dy);
    }

  public:
    bool hasValidPath(vector<vector<int>> &grid)
    {
        int m = grid.size();
        int n = grid[0].size();
        vector<vector<int>> vis(m, vector<int>(n));
        auto dfs = [&](auto &&self, int xi, int yi)
        {
            if (xi == m - 1 && yi == n - 1)
                return true;
            int dir = grid[xi][yi];
            vis[xi][yi] = true;
            for (auto &[dx, dy] : DIR[dir])
            {
                int x = xi + dx;
                int y = yi + dy;
                if (x < 0 || x >= m || y < 0 || y >= n || vis[x][y] || !can_reach(grid[x][y], -dx, -dy))
                    continue;
                if (self(self, x, y))
                    return true;
            }
            return false;
        };
        return dfs(dfs, 0, 0);
    }
};

/*
 * 我去这题，对于每两个dir，要确定这俩块是否连通
 * 因此对于每一块我们看看他都能怎么走
 * 比如第一块，可以左右移动，第三块可以向左和向下
 * 同时我们没法确定是从左端进入还是右端进入，所以通过vis记录和历遍来不漏掉
 * good (￣▽￣)ｄ
 */
