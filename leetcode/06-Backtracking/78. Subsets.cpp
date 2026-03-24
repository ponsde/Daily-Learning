#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    vector<vector<int>> subsets(vector<int> &nums)
    {
        int l = nums.size();
        vector<int> t;
        vector<vector<int>> ans;
        auto dfs = [&](auto &&self, int i)
        {
            if (i == l)
            {
                ans.push_back(t);
                return;
            }
            self(self, i + 1);
            t.push_back(nums[i]);
            self(self, i + 1);
            t.pop_back();
            return;
        };
        dfs(dfs, 0);
        return ans;
    }
};

/*
    简单的选和不选
*/