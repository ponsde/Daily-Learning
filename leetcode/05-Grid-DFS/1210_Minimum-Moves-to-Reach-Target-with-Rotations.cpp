#include <vector>
#include <queue>
#include <tuple>

using namespace std;

class Solution
{
    static constexpr int DIRS[3][3] = {{1, 0, 0}, {0, 1, 0}, {0, 0, 1}};

public:
    int minimumMoves(vector<vector<int>> &grid)
    {
        int n = grid.size();
        vector<vector<vector<bool>>> vis(n, vector<vector<bool>>(n, vector<bool>(2, false)));
        vis[0][0][0] = true;
        queue<tuple<int, int, int>> q;
        q.push(make_tuple(0, 0, 0));
        int step = 0;
        while (!q.empty())
        {
            int sz = q.size();
            step++;
            for (int i = 0; i < sz; ++i)
            {
                auto [X, Y, S] = q.front();
                q.pop();
                for (auto &d : DIRS)
                {
                    int x = X + d[0];
                    int y = Y + d[1];
                    int s = S ^ d[2];

                    int x2 = x + s;
                    int y2 = y + (1 ^ s);

                    if (x2 < n && y2 < n && vis[x][y][s] == false && grid[x][y] == 0 && grid[x2][y2] == 0 && (d[2] == 0 || grid[x + 1][y + 1] == 0))
                    {
                        if (x == n - 1 && y == n - 2)
                        {
                            return step;
                        }
                        vis[x][y][s] = true;
                        q.push(make_tuple(x, y, s));
                    }
                }
            }
        }
        return -1;
    }
};

// DIRS储存不同的动作，向右、向下、旋转