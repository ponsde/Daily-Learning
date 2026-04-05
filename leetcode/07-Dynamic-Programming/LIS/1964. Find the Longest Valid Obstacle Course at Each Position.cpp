#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    vector<int> longestObstacleCourseAtEachPosition(vector<int>& obstacles) {
        vector<int> ans;
        vector<int> g;
        for (auto x : obstacles)
        {
            auto it = upper_bound(g.begin(), g.end(), x);
            if (it == g.end())
            {
                g.push_back(x);
                ans.push_back(g.size());
            }
            else
            {
                int idx = it - g.begin();
                ans.push_back(idx + 1);
                *it = x;
            }
            
        }
        return ans;
    }
};

/*
        这里跟普通LIS不同的是，第i个障碍必须在其中
        同时不是严格递增，因此使用upper_bound来找到第一个大于x的位置
        因此若是第i个障碍在g中的位置是末尾，则说明是最长的，直接加上前面的长度
        如果是在中间，就说明该障碍不是最长的，需要加上比它埃的长度
        此时的idx也就是比它小的长度，因此直接加上1就可以了
*/