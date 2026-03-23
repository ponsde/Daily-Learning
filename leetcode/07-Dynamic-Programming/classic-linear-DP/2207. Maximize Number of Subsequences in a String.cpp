#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    long long maximumSubsequenceCount(string text, string pattern)
    {
        long long cnt1 = 0;
        long long cnt2 = 0;
        long long ans = 0;
        for (auto x : text)
        {
            if (x == pattern[1])
            {
                cnt2++;
                ans += cnt1;
            }
            if (x == pattern[0])
            {
                cnt1++;
            }
        }
        return ans + max(cnt1, cnt2);
    }
};

/*
    这里有两个就有点技巧性地这样
    一遍历遍一遍维护cnt1、cnt2
    同时每次遇到cnt2，往ans + cnt1
    最后插入的位置最好都是最左边或者最右边，因此特判即可
*/