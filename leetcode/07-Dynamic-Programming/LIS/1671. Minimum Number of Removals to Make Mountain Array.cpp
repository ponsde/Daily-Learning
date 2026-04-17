#include <bits/stdc++.h>

using namespace std;

class Solution
{
    vector<int> help(vector<int> &nums)
    {
        int l = nums.size();
        vector<int> vec(l);
        vector<int> g;

        for (int i = 0; i < l; ++i)
        {
            auto it = lower_bound(g.begin(), g.end(), nums[i]);
            if (it == g.end())
            {
                g.push_back(nums[i]);
                vec[i] = g.size();
            }
            else
            {
                *it = nums[i];
                vec[i] = it - g.begin() + 1;
            }
        }
        return vec;
    }

public:
    int minimumMountainRemovals(vector<int> &nums)
    {
        vector<int> pre = help(nums);
        reverse(nums.begin(), nums.end());
        vector<int> suf = help(nums);
        reverse(suf.begin(), suf.end());
        int l = nums.size();
        int mx = INT_MIN;
        for (int i = 1; i < l - 1; ++i)
        {
            if (pre[i] <= 1 || suf[i] <= 1)
                continue;
            mx = max(mx, pre[i] + suf[i] - 1);
        }
        return l - mx;
    }
};

/*
    想的正序、逆序历遍然后存lis
    然后发现有问题，因为我这里的pre[i]表示选了第i个的前面或后面的最优选择，因此就不能普通的按照最长递增子序列来算了
    reverse历遍后suf是反着的需要再reverse对应回来
    需要注意pre和suf[i]需要大于1，也就是需要该点左右都有元素，否则就不满足山峰的条件了
*/