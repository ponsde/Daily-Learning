/*
从前，在海上有
n
n 个岛屿，编号
1
1 至
n
n。居民们深受洋流困扰，无法到达比自己当前所在岛屿编号更小的岛屿。经过数年以后，岛屿上的人数随着岛屿的编号递增（可能相等）。作为一名出色的旅行家（
R
P
RP 学家），你想从
1
1 号岛屿出发开启一次旅程，以获得更多的
R
P
RP，因为受到海洋的洋流影响，你只能去到比当前岛屿编号更大的岛屿。因为你比较善良，你会在离开一个岛屿的时候将你的
R
P
RP 分散给岛民，具体地：你的
R
P
RP 会除以
2
2（用去尾法取整，或者说向零取整）（当你的
R
P
RP 小于零时，岛民也依旧要帮你分担，毕竟你们已经建立起了深厚的友谊)。
第
i
i 号岛屿有
T
i
T
i
​
  人，但是你很挑剔，每次你从
j
j 号岛屿到达
i
i 号岛屿时，你只会在到达的岛屿上做
T
i
×
T
j
T
i
​
 ×T
j
​
  件好事（一件好事可以获得
1
1 点
R
P
RP )。
唯一不足的是，由于你在岛上住宿，劳民伤财，你会扣除巨量 RP，第
i
i 号岛屿的住宿扣除
F
i
F
i
​
  点
R
P
RP。
注意: 将离开一个岛屿时，先将
R
P
RP 扣除一半，再扣除住宿的
R
P
RP，最后在 新到达的岛屿上做好事，增加
R
P
RP。离开
1
1 号岛屿时需要扣除在
1
1 号岛屿住宿的
R
P
RP，当到达这段旅程的最后一个岛屿上时，要做完好事，行程才能结束，也就是说不用扣除在最后到达的岛屿上住宿的
R
P
RP 。
你因为热爱旅行（RP），所以从
1
1 号岛屿开始旅行，初始时你有
0
0 点
R
P
RP。你希望选择一些岛屿经过，最终选择一个岛屿停下来，求最大的
R
P
RP 值是多少?
*/

#include <bits/stdc++.h>

using namespace std;

const int N = 100005;

int pop[N];
int cost[N];

int main(void)
{
    int n;
    cin >> n;
    for (int i = 1; i <= n; ++i)
    {
        int a;
        cin >> a;
        pop[i] = a;
    }
    for (int i = 1; i <= n; ++i)
    {
        int a;
        cin >> a;
        cost[i] = a;
    }

    vector<long long> dp(n + 1);
    for (int i = 1; i <= n; ++i)
    {
        for (int j = 1; j < i; ++j)
        {
            dp[i] = max(dp[i], dp[j] / 2 - cost[j] + pop[i] * pop[j]);
        }
    }
    cout << *max_element(dp.begin(), dp.end()) << '\n';
}