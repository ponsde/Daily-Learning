#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int maxProductPath(vector<vector<int>>& grid) {
        int MOD = 1000'000'007;
        int m = grid.size();
        int n = grid[0].size();
        vector<vector<long long>> dpmax(m + 1, vector<long long>(n + 1, INT_MIN));
        
        vector<vector<long long>> dpmin(m + 1, vector<long long>(n + 1, INT_MAX));


        dpmax[0][1] = 1;
        dpmin[0][1] = 1;

        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                long long resmx = max(dpmax[i + 1][j], dpmax[i][j + 1]);

                long long resmn = min(dpmin[i + 1][j], dpmin[i][j + 1]);

                

                if (resmx == INT_MIN || resmn == INT_MAX)
                {
                    continue;
                }

                dpmax[i + 1][j + 1] = max(1LL * resmx * grid[i][j], 1LL * resmn * grid[i][j]);
                dpmin[i + 1][j + 1] = min(1LL * resmx * grid[i][j], 1LL * resmn * grid[i][j]);
            } 
        }

        return dpmax[m][n] < 0 ? -1 : dpmax[m][n] % MOD;
    }
};

/*
    幸好前面做到过1维的，所以感觉类似的应该能写出来
    对于每一个点，正的须要乘前一个最大的，负的乘最小的
    因为通过dpmax和dpmin维护
    然后直接max和min，忽略判断当前是正还是负
*/