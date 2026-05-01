#include <bits/stdc++.h>

using namespace std;

class Solution
{
  public:
    int minOperations(vector<vector<int>> &grid, int x)
    {
        int m = grid.size();
        int n = grid[0].size();
        long long bd = m * n;
        vector<int> vec(bd);
        long long sum = 0;
        unordered_set<int> st;
        int temp = -1;
        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                vec[i * n + j] = grid[i][j];
                if (temp == -1)
                {
                    temp = grid[i][j] % x;
                    continue;
                }
                if (temp != grid[i][j] % x)
                    return -1;
            }
        }
        sort(vec.begin(), vec.end());
        vector<long long> s(bd + 1);

        for (int i = 0; i < bd; ++i)
        {
            s[i + 1] = s[i] + vec[i];
        }
        long long ans = INT_MAX;

        for (int i = 0; i < bd; ++i)
        {
            long long left = i * vec[i] - s[i];
            long long rigt = s[bd] - s[i] - (bd - i) * vec[i];
            if ((left + rigt) % x != 0)
                continue;
            ans = min(ans, (left + rigt) / x);
        }

        return ans == INT_MAX ? -1 : ans;
    }
};

/*
 * 比较关键的是发现如果要成立，那么里面的数 % x都要相同，不然就是return -1
 */

class Solution2
{
  public:
    int minOperations(vector<vector<int>> &grid, int x)
    {
        int m = grid.size();
        int n = grid[0].size();
        long long bd = m * n;
        vector<int> vec(bd);
        long long sum = 0;
        unordered_set<int> st;
        int temp = -1;
        for (int i = 0; i < m; ++i)
        {
            for (int j = 0; j < n; ++j)
            {
                vec[i * n + j] = grid[i][j];
                if (temp == -1)
                {
                    temp = grid[i][j] % x;
                    continue;
                }
                if (temp != grid[i][j] % x)
                    return -1;
            }
        }

        nth_element(vec.begin(), vec.begin() + bd / 2, vec.end());

        int mid = vec[bd / 2];
        int ans = 0;
        for (int i = 0; i < bd; ++i)
        {
            ans += abs(vec[i] - mid) / x;
        }

        return ans;
    }
};

/*
 * 哇哇哇，灵神nb，学到了，中位数就是将所有变为相同的最优数
 * https://zhuanlan.zhihu.com/p/1922938031687595039
 */
