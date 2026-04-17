#include <bits/stdc++.h>

using namespace std;

class Solution
{
    int help(int x)
    {
        int t = 0;
        while (x > 0)
        {
            t *= 10;
            t += x % 10;
            x /= 10;
        }
        return t;
    }

public:
    int minMirrorPairDistance(vector<int> &nums)
    {
        unordered_map<int, int> hash;
        int l = nums.size();
        int ans = INT_MAX;
        for (int i = 0; i < l; ++i)
        {
            auto it = hash.find(nums[i]);
            if (it != hash.end())
            {
                ans = min(ans, i - it->second);
            }
            hash[help(nums[i])] = i;
        }
        return ans == INT_MAX ? -1 : ans;
    }
};

/*
    因为要求j要在i右边，那么就类似两数之和那种了
*/