#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

pair<long long, long long> cal(long long ni, long long di, long long ei);

int main(void)
{
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    long long k;
    cin >> k;
    for (long long i = 0; i < k; ++i)
    {
        long long ni, di, ei;
        cin >> ni >> di >> ei;
        auto t = cal(ni, di, ei);
        if (t.first == 0 && t.second == 0)
        {
            cout << "NO" << endl;
            continue;
        }
        cout << t.first << " " << t.second << '\n';
    }
}

pair<long long, long long> cal(long long ni, long long di, long long ei)
{
    long long m = ei * di;
    long long k = ni - m + 2;
    long long delta = 1LL * k * k - 4 * ni;
    if (delta < 0)
    {
        return make_pair(0, 0);
    }
    long double sd = sqrt((long double)delta);
    long long r = llround(sd);
    if (r * r != delta)
    {
        return make_pair(0, 0);
    }
    long long x1 = (k + r) / 2;
    long long x2 = (k - r) / 2;
    if (x1 * x2 != ni || ((x1 - 1) * (x2 - 1) + 1 != m) || (x1 < 0) || (x2 < 0))
    {
        return make_pair(0, 0);
    }
    return make_pair(x2, x1);
}

// 需要注意sqrt的精度问题，因为sqrt是浮点精度就要注意，免得出错

// 要注意这个
// ios::sync_with_stdio(false);
// cin.tie(nullptr);
// 要背下来了，之后遇到大数据的题目用这个加快速度

// 二次注意，在oj上提交时，用endl会超时，要用\n， 从现在开始就用\n