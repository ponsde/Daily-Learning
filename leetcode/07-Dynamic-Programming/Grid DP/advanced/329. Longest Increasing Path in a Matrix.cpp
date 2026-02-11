#include <bits/stdc++.h>

using namespace std;

int dx[] = {0, 0, 1, -1};
int dy[] = {1, -1, 0, 0};

class Solution {
public:
    int longestIncreasingPath(vector<vector<int>>& matrix) {
        int m = matrix.size();
        int n = matrix[0].size();

        int ans = 0;

        vector<vector<int>> dp(m, vector<int>(n));

        auto dfs = [&](auto&&self, int x, int y)
        {
            if (dp[x][y] != 0)
            {
                return dp[x][y];
            }
            int res = 1;
            for (int i = 0; i < 4; ++i)
            {
                int x1 = x + dx[i];
                int y1 = y + dy[i];
                if (x1 < 0 || x1 >= m || y1 < 0 || y1 >= n || matrix[x1][y1] <= matrix[x][y]) continue;

                res = max(res, self(self, x1, y1) + 1);
            }

            ans = max(ans, res);
            return dp[x][y] = res;
        };

        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                dfs(dfs, i, j);
            }
        }
        return ans;
    }
};

/*
    对于每个点都进行一次 DFS，记录以该点为起点的最长递增路径长度，使用记忆化避免重复计算  
*/

int dx[] = {0, 0, 1, -1};
int dy[] = {1, -1, 0, 0};

class Solution {
public:
    int longestIncreasingPath(vector<vector<int>>& matrix) {
        int m = matrix.size();
        int n = matrix[0].size();

        int ans = 0;

        vector<tuple<int, int, int>> vec;
        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                vec.emplace_back(matrix[i][j], i, j);
            }
        }

        sort(vec.begin(), vec.end());

        vector<vector<int>> dp(m, vector<int>(n, 1));

        for (int i = 0; i < m * n; ++i)
        {
            auto [p, x, y] = vec[i];
            int cnt = 0;
            for (int k = 0; k < 4; ++k)
            {
                int x1 = x + dx[k];
                int y1 = y + dy[k];
                if (x1 < 0 || x1 >= m || y1 < 0 || y1 >= n || matrix[x1][y1] >= p) continue;
                dp[x][y] = max(dp[x][y], dp[x1][y1] + 1);
            }

            ans = max(ans, dp[x][y]);

        }

        return ans;
    }
};

/*
    dp的做法，先排序，然后依次从小到大看过去
    若是该点的上下左右都比它大，那么该点的dp就是1
    如果有比它小的，那么该点的dp就是这些点的dp的最大值+1
*/