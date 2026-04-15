#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int longestSubsequence(vector<int> &nums)
    {
        int k = 0;
        for (auto x : nums)
        {
            k |= x;
        }
        int ans = 0;
        for (int off = 0; off <= 31; ++off)
        {
            if ((k & (1 << off)) != 0)
            {
                vector<int> g;
                for (auto x : nums)
                {
                    if ((x & (1 << off)) != 0)
                    {
                        auto it = lower_bound(g.begin(), g.end(), x);
                        if (it == g.end())
                        {
                            g.push_back(x);
                        }
                        else
                        {
                            *it = x;
                        }
                    }
                }
                ans = max(ans, (int)g.size());
            }
        }

        return ans;
    }
};

/*
    好吧太久没做了脑袋生锈
    因为按位&，所以选择的数字该位都必须不为0
    那么最开始先按位|，然后一位位看过去，如果该位为0，就代表没有对应的可能，跳过
    然后对于有的，每个数字看过去，看看是否满足该位不为0，如果满足，就进行正常的判断
*/