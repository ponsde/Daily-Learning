#include <bits/stdc++.h>

using namespace std;

class Solution
{

    int dx[4] = {0, -1, 0, 1};
    int dy[4] = {1, 0, -1, 0};

public:
    int robotSim(vector<int> &commands, vector<vector<int>> &obstacles)
    {
        int dir = 0;
        int cur_x = 0;
        int cur_y = 0;
        unordered_set<long long> st;
        int ans = 0;
        for (auto a : obstacles)
        {
            int x = a[0];
            int y = a[1];
            st.insert(((long long)(x) << 32) ^ (unsigned int)y);
        }
        int lc = commands.size();
        for (int i = 0; i < lc; ++i)
        {
            if (commands[i] == -2 || commands[i] == -1)
            {
                int mask = commands[i] == -2 ? 1 : 3;
                dir = (dir + mask) % 4;
                continue;
            }

            int step = commands[i];
            for (int j = 1; j <= step; ++j)
            {
                int next_x = cur_x + dx[dir];
                int next_y = cur_y + dy[dir];
                long long t = ((long long)(next_x) << 32) ^ (unsigned int)next_y;
                auto it = st.find(t);
                if (it != st.end())
                {
                    break;
                }
                cur_x = next_x;
                cur_y = next_y;
                ans = max(ans, (cur_x * cur_x) + (cur_y * cur_y));
            }
        }
        return ans;
    }
};

/*
    他这里的x，y的障碍物判断，每走一步判断一次
    同时为了方便，这里将x，y障碍物的位置用某个数来表示，然后存入unordered_set，这样O(1)的时间复杂度来判断是否有障碍物
    相当于前32位是x，后32位是y，这样就可以唯一的表示一个坐标了
    注意这里的后32位要用unsigned，因为int如果是负数的话，扩展为long long后高32位全是1了
    同时这里dir转向也很妙，左转右转分别加1和3，最后对4取模就可以了
*/