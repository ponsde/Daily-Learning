#include <bits/stdc++.h>

using namespace std;

class Solution
{

public:
    int maxEnvelopes(vector<vector<int>> &envelopes)
    {
        int l = envelopes.size();
        auto cmp = [&](const auto &a, const auto &b)
        {
            if (a[0] == b[0])
            {
                return a[1] > b[1];
            }
            return a[0] < b[0];
        };
        sort(envelopes.begin(), envelopes.end(), cmp);
        vector<int> g;
        for (int i = 0; i < l; ++i)
        {
            int m = envelopes[i][1];
            auto it = lower_bound(g.begin(), g.end(), m);
            if (it == g.end())
            {
                g.push_back(m);
            }
            else
            {
                *it = m;
            }
        }
        return g.size();
    }
};

/*
    既然是2维的，那就先将w排序把它当作一维的来做
    但是如果w相同的话，h就不能算了，所以h要降序排序，这样较小的h在后面会把前面较大的h全顶掉
*/