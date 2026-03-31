#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int countMaxOrSubsets(vector<int> &nums)
    {
        int l = nums.size();
        map<int, int, greater<>> mp;
        auto dfs = [&](auto &&self, int i, int t)
        {
            if (i == l)
            {
                mp[t]++;
                return;
            }
            self(self, i + 1, t | nums[i]);
            self(self, i + 1, t);
        };
        dfs(dfs, 0, 0);
        return mp.begin()->second;
    }
};

/*
    别把按位或看成了按位异或就行了，用map有点慢，那换个

*/

class Solution
{
public:
    int countMaxOrSubsets(vector<int> &nums)
    {
        int l = nums.size();
        int mx = INT_MIN;
        int ans = 0;
        auto dfs = [&](auto &&self, int i, int t)
        {
            if (i == l)
            {
                if (t > mx)
                {
                    mx = t;
                    ans = 1;
                }
                else if (t == mx)
                    ans++;
                return;
            }
            self(self, i + 1, t | nums[i]);
            self(self, i + 1, t);
        };
        dfs(dfs, 0, 0);
        return ans;
    }
};

/*
    维护mx和ans，这样省去了map插入的开销，效率更高
*/