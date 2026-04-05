#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int minimumOperations(vector<int>& nums) {
        vector<int> g;
        for (auto x : nums)
        {
            auto it = upper_bound(g.begin(), g.end(), x);
            if (it == g.end())
            {
                g.push_back(x);
            }
            else
            {
                *it = x;
            }
        }
        return nums.size() - g.size();
    }
};

/*
    求最小的删除数，那么就最大的递增序列，然后再用总数减去最长递增序列的长度就是最小删除数了
    注意这里不是严格递增，所以用upper_bound
*/