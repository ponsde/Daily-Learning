/*
栈是常用的一种数据结构，有n令元素在栈顶端一侧等待进栈，栈顶端另一侧是出栈序列。
你已经知道栈的操作有两•种：push和pop，前者是将一个元素进栈，后者是将栈顶元素弹出。
现在要使用这两种操作，由一个操作序列可以得到一系列的输出序列。请你编程求出对于给定的n，计算并输出由操作数序列1，2，…，n，经过一系列操作可能得到的输出序列总数。
*/

#include <bits/stdc++.h>

using namespace std;

int memo[20][20];

int main(void)
{
    int n;
    cin >> n;
    auto dfs = [&](auto &&self, int wait, int st)
    {
        if (wait == 0)
        {
            return 1;
        }
        if (memo[wait][st] > 0)
        {
            return memo[wait][st];
        }
        long long cur_sum = 0;
        if (wait > 0)
        {
            cur_sum += self(self, wait - 1, st + 1);
        }
        if (st > 0)
        {
            cur_sum += self(self, wait, st - 1);
        }
        return memo[wait][st] = cur_sum;
    };
    cout << dfs(dfs, n, 0) << '\n';
}