#include <vector>
#include <algorithm>
#include <climits>

using namespace std;

class Solution
{
public:
    int climbStairs(int n, vector<int> &costs)
    {
        vector<int> dp(n + 3);
        for (int i = 0; i < n; ++i)
        {
            dp[i + 3] = min({dp[i] + 9, dp[i + 1] + 4, dp[i + 2] + 1}) + costs[i];
        }
        return dp[n + 2];
    }
};

/*
    最开始写了递归，但不知道为什么会超时，就改成递推了
    第i+3级台阶由第i、i+1、i+2级台阶迈一步、两步、三步到达
    f[i+3] = min(f[i] + 9, f[i+1] + 4, f[i+2] + 1) + costs[i];
*/

class Solution
{
public:
    int climbStairs(int n, vector<int> &costs)
    {
        int f0 = 0;
        int f1 = 0;
        int f2 = 0;
        for (int i = 0; i < n; ++i)
        {
            int new_f = min({f0 + 9, f1 + 4, f2 + 1}) + costs[i];
            f0 = f1;
            f1 = f2;
            f2 = new_f;
        }
        return f2;
    }
};

class Solution
{
public:
    int climbStairs(int n, vector<int> &costs)
    {
        vector<int> dp(n + 1);
        for (int i = 1; i <= n; ++i)
        {
            int res = INT_MAX;
            for (int j = max(i - 3, 0); j < i; ++j)
            {
                res = min(res, dp[j] + (i - j) * (i - j));
            }
            dp[i] = res + costs[i - 1];
        }
        return dp[n];
    }
};

// 灵神的，写出来感觉更具有普适性，或者说比我那个需要想长度是多少更好