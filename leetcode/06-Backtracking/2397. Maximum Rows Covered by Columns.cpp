#include <bits/stdc++.h>

using namespace std;

class Solution
{
  public:
    int maximumRows(vector<vector<int>> &matrix, int numSelect)
    {
        int m = matrix.size();
        int n = matrix[0].size();
        vector<int> chose;
        int ans = 0;
        auto help = [&](auto &&self, int cnt)
        {
            if (chose.size() == numSelect)
            {
                auto g = matrix;
                int ct = 0;
                for (auto c : chose)
                {
                    for (int i = 0; i < m; ++i)
                    {
                        g[i][c] = 0;
                    }
                }
                for (int i = 0; i < m; ++i)
                {
                    bool is_can = true;
                    for (int j = 0; j < n; ++j)
                    {
                        if (g[i][j] == 1)
                        {
                            is_can = false;
                            break;
                        }
                    }
                    if (is_can)
                        ct++;
                }
                ans = max(ans, ct);
                return;
            }
            if (cnt == n)
                return;
            self(self, cnt + 1);
            chose.push_back(cnt);
            self(self, cnt + 1);
            chose.pop_back();
        };
        help(help, 0);
        return ans;
    }
};

/*
 * 可以选择列删除该列里面的1，然后找哪种选择能让一行全为0的行数最多
 */
