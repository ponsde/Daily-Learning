#include <vector>
#include <stack>
#include <algorithm>

using namespace std;

class Solution
{
public:
    int carFleet(int target, vector<int> &position, vector<int> &speed)
    {
        int l = position.size();
        vector<pair<int, int>> cars(l);
        for (int i = 0; i < l; ++i)
        {
            cars[i] = make_pair(position[i], speed[i]);
        }
        auto cmp = [](const auto &a, const auto &b)
        {
            return a.first < b.first;
        };
        sort(cars.begin(), cars.end(), cmp);
        stack<double> st;
        for (int i = 0; i < l; ++i)
        {
            double t = 1.0 * (target - cars[i].first) / cars[i].second;
            while (!st.empty() && t >= st.top())
            {
                st.pop();
            }
            st.push(t);
        }
        return st.size();
    }
};

// 不是明面上一看就知道是单调栈
// 先通过位置排序位置，从小到大，若小的为快车，追赶上前车时会变成前车的速度
// 问题转变为从左往右历遍时，做一个从大到小的单调栈
// 晚点再做一遍

// 挺好的问题，很好的打压了下我，让我能以正常心继续单调栈的学习