#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int maxDistance(vector<int> &colors)
    {
        int l = colors.size();
        int ans = INT_MIN;
        vector<int> arr(101, -1);
        for (int i = 0; i < l; ++i)
        {
            if (arr[colors[i]] == -1)
            {
                arr[colors[i]] = i;
            }
            for (int j = 0; j <= 100; ++j)
            {
                if (j == colors[i] || arr[j] == -1)
                    continue;
                ans = max(ans, i - arr[j]);
            }
        }
        return ans;
    }
};

/*
    不同颜色距离最远，那么储存第一个该颜色的下标然后历遍所有即可因为数据量不大，但还是笨方法
*/

class Solution
{
public:
    int maxDistance(vector<int> &colors)
    {
        int l = colors.size();
        int m = colors[0];
        if (m != colors.back())
            return l - 1;
        int t1 = -1;
        for (int i = l - 1; i >= 0; --i)
        {
            if (colors[i] != m)
            {
                t1 = i;
                break;
            }
        }
        int t2 = -1;
        for (int i = 0; i < l; ++i)
        {
            if (colors[i] != colors.back())
            {
                t2 = l - 1 - i;
                break;
            }
        }
        return max(t1, t2);
    }
};

/*
    脑经急转弯，要求找最大的距离那么根据开头结尾的颜色找就行...
*/