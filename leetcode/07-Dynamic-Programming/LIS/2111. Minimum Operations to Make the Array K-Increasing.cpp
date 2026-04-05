#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int kIncreasing(vector<int>& arr, int k) {
        int l = arr.size();
        int t = 0;
        for (int i = 0; i < k; ++i)
        {
            vector<int> g;
            for (int j = i; j < l; j += k)
            {
                auto it = upper_bound(g.begin(), g.end(), arr[j]);
                if (it == g.end())
                {
                    g.push_back(arr[j]);
                }
                else
                {
                    *it = arr[j];
                }
            }
            t += g.size();
        }
        return l - t;
    }
};

/*
    也不是很难嘛...
    对于第i各数，要求他大于等于i - k对应的数
    因此对应下来，就是0、k、2k...，1、k+1、2k+1...，2、k+2、2k+2...的数分别构成一个序列
    因此我们对前k个分别开始历遍
    求最小的修改次数，那么就是求每一个起点对应的最长非递减子序列的长度，最后总长度减去这个长度就是修改次数
*/


/*
    对于进阶问题，若是改为严格递增
    对于某个得出的数组，假如为[3,2,4,5,5,6,6]
    因为是严格递增，那么如果为了保证能够，最小限度严格递增为123456这样
    因此对与a[i]，a[i] >= i + 1，这样才能允许被保留，不然保留了前面的空间又不够
    因此我们对该数组每一个进行减去下标，得到[3,1,2,2,1,1,0]
    同时a[i] - i >= 1，那么多正整数来寻找最长非递减子序列的长度就可以了
*/