#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    bool increasingTriplet(vector<int>& nums) {
        vector<int> g;
        for (auto x : nums)
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
            if (g.size() == 3) return true;
        }
        return false;
    }
};

/*
    感觉就相当于找最长递增子序列，长度为3就行
*/