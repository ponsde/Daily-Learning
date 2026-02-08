#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int minFallingPathSum(vector<vector<int>>& grid) {
        int m = grid.size();
        int n = grid[0].size();
        vector<vector<pair<int, int>>> vec;
        for (int i = 0; i < m; ++i)
        {
            vector<pair<int, int>> temp;
            for (int j = 0; j < n; ++j)
            {
                temp.emplace_back(grid[i][j], j);
            }
            sort(temp.begin(), temp.end());
            vec.push_back(temp);
        }

        vector<vector<int>> dp(m, vector<int>(n));

        dp[m - 1] = grid.back();
        for (int i = m - 2; i >= 0; --i)
        {
            for (int j = 0; j < n; ++j)
            {
                int best = INT_MAX;
                for (int k = 0; k < n; ++k)
                {
                    if (k == j)
                    {
                        continue;
                    }
                    best = min(best, dp[i + 1][k]);
                }
                dp[i][j] = best + grid[i][j];
            }
        }
        int ans = INT_MAX;
        for (int i = 0; i < n; ++i)
        {
            ans = min(ans, dp[0][i]);
        }
        return ans;
    }
};

/*
    不要理解错题目的意思，要求的是上下不同在同一列而不是数的+1和-1不能在同一列
    然后就历遍dp即可
    虽然能过但复杂度有点高
*/

class Solution {
public:
    int minFallingPathSum(vector<vector<int>>& grid) {
        int m = grid.size();
        int n = grid[0].size();
        if (m == 1)
        {
            return *min_element(grid[0].begin(), grid[0].end());
        }
        vector<vector<int>> dp(m, vector<int>(n));

        pair<int, int> mn1 = {INT_MAX, -1};
        pair<int, int> mn2 = {INT_MAX, -1};

        for (int i = 0; i < n; ++i)
        {
            if (mn1.first > grid[m - 1][i])
            {
                mn2 = mn1;
                mn1 = {grid[m - 1][i], i};
            }
            else if (mn2.first > grid[m - 1][i])
            {
                mn2 = {grid[m - 1][i], i};
            }
        }
        for (int i = m - 2; i >= 0; --i)
        {
            pair<int, int> t1 = {INT_MAX, -1};
            pair<int, int> t2 = {INT_MAX, -1};
            for (int j = 0; j < n; ++j)
            {
                int best = INT_MAX;
                if (mn1.second != j)
                {
                    best = mn1.first;
                }
                else
                {
                    best = mn2.first;
                }
                dp[i][j] = best + grid[i][j];
                if (t1.first > dp[i][j])
                {
                    t2 = t1;
                    t1 = {dp[i][j], j};
                }
                else if (t2.first > dp[i][j])
                {
                    t2 = {dp[i][j], j};
                }
            }
            mn1 = t1;
            mn2 = t2;
        }

        return mn1.first;
    }
};

/*
    优化，因为只需要考虑下一行的最小值和次小值，那么就直接记录下来即可
    注意当次小值在最小值后面是，单单看t1.first > dp[i][j]是不够的，还需要判断t2.first > dp[i][j]
    注意这里当m == 1时的特殊情况，提前返回，因为这里用最小和次小，就是假定m >= 2
    这里可以直接返回mn1.first，因为最后一行的最小值就是答案
*/