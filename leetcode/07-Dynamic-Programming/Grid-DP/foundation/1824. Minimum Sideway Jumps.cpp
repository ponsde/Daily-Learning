#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int minSideJumps(vector<int>& obstacles) {
        int n = obstacles.size();
        vector<vector<int>> dis(3, vector<int>(n, INT_MAX));

        dis[1][0] = 0;

        int ans = INT_MAX;

        auto bfs = [&](int xi, int yi)
        {
            deque<pair<int, int>> dq;
            dq.emplace_back(xi, yi);
            while (!dq.empty())
            {
                auto [x, y] = dq.front(); dq.pop_front();
                if (y == n - 1)
                {
                    ans = dis[x][y];
                    return;
                }
                int m = obstacles[y + 1] - 1;
                if (x != m && dis[x][y] < dis[x][y + 1])
                {
                    dis[x][y + 1] = dis[x][y];
                    dq.emplace_front(x, y + 1);
                }

                for (auto k : {(x + 1) % 3, (x + 2) % 3})
                {
                    if (k != obstacles[y] - 1 && dis[x][y] + 1 < dis[k][y])
                    {
                        dis[k][y] = dis[x][y] + 1;
                        dq.emplace_back(k, y);
                    }
                }

            }
        };
        bfs(1, 0);

        return ans;
    }
};

/*
    用图的bfs做，对于每一个位置，都有2个选择
    1个是看是否能往右边走
    1个是看是否能忘另外的两条道走
*/