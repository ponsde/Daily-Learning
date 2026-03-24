#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int subsetXORSum(vector<int> &nums)
    {
        int sum = 0;
        int t = 0;
        int l = nums.size();
        auto dfs = [&](auto &&self, int i)
        {
            if (i == l)
            {
                sum += t;
                return;
            }
            self(self, i + 1);
            t ^= nums[i];
            self(self, i + 1);
            t ^= nums[i];
        };
        dfs(dfs, 0);
        return sum;
    }
};

/*
    简单的选和不选
*/