#include <vector>

using namespace std;

class Solution
{
public:
    int climbStairs(int n)
    {
        vector<long long> f(n + 1, 0);
        f[0] = 1;
        f[1] = 1;
        for (int i = 0; i < n - 1; ++i)
        {
            f[i + 2] = f[i] + f[i + 1];
        }
        return f[n];
    }
};

/*
    对于第i级台阶，有两种方式可以到达：
    从第i-1级台阶迈1步到达第i级台阶
    从第i-2级台阶迈2步到达第i级台阶
    而迈步的开始为第0级和第一级，也就是我们初始就站在0或者1上，所以f[0] = 1, f[1] = 1
*/