#include <iostream>
#include <vector>
#include <algorithm>
#include <climits>

using namespace std;

int main(void)
{
    int n, a, b;
    cin >> n >> a >> b;
    vector<pair<int, int>> vec(n);
    for (int i = 0; i < n; ++i)
    {
        int xi, yi;
        cin >> xi >> yi;
        vec[i] = {xi, yi};
    }
    int ans = 0;
    auto can = [&](int w, int h, int w1, int h1, int w2, int h2)
    {
        if (w1 + w2 <= w && max(h1, h2) <= h)
        {
            return true;
        }
        if (w1 + w2 <= h && max(h1, h2) <= w)
        {
            return true;
        }
        return false;
    };
    auto check = [&](auto &m, auto &n)
    {
        int x1 = m.first;
        int y1 = m.second;
        int x2 = n.first;
        int y2 = n.second;
        for (int r1 = 0; r1 < 2; ++r1)
        {
            int w1 = r1 ? x1 : y1;
            int h1 = r1 ? y1 : x1;
            for (int r2 = 0; r2 < 2; ++r2)
            {
                int w2 = r2 ? x2 : y2;
                int h2 = r2 ? y2 : x2;
                if (can(a, b, w1, h1, w2, h2) == true)
                {
                    int sum = w1 * h1 + w2 * h2;
                    ans = max(ans, sum);
                    return;
                }
            }
        }
    };

    for (int i = 0; i < n - 1; ++i)
    {
        for (int j = i + 1; j < n; ++j)
        {
            check(vec[i], vec[j]);
        }
    }
    cout << ans << endl;
}

// 比赛时看错了，原来是只要在n个中选择2个就行，不用全排列
// 因此只需要暴露的枚举即可， 需要注意的是印章可翻转
// 为防止过丑的的代码通过for循环和can代替if 和 else