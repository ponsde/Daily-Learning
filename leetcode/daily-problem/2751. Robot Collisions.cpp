#include <bits/stdc++.h>

using namespace std;

class Solution
{
    struct robot
    {
        int pos;
        int hea;
        int dir;
    };

public:
    vector<int> survivedRobotsHealths(vector<int> &positions, vector<int> &healths, string directions)
    {
        int l = positions.size();
        vector<robot> robots(l);
        unordered_map<int, int> hash;
        for (int i = 0; i < l; ++i)
        {
            robots[i].pos = positions[i];
            robots[i].hea = healths[i];
            robots[i].dir = directions[i] != 'L';
            hash[positions[i]] = i;
        }
        auto cmp = [](const auto &a, const auto &b)
        {
            return a.pos < b.pos;
        };
        sort(robots.begin(), robots.end(), cmp);
        vector<int> ans(l, -1);
        vector<robot> lfs;
        vector<robot> rgs;
        for (int i = 0; i < l; ++i)
        {
            if (lfs.empty() && robots[i].dir == 0)
            {
                ans[hash[robots[i].pos]] = robots[i].hea;
                continue;
            }
            if (robots[i].dir == 1)
            {
                lfs.push_back(robots[i]);
            }
            else
            {
                int hea = robots[i].hea;
                while (!lfs.empty() && hea > lfs.back().hea)
                {
                    hea -= 1;
                    lfs.pop_back();
                }
                if (!lfs.empty())
                {
                    if (lfs.back().hea == hea)
                    {
                        lfs.pop_back();
                    }
                    else
                    {
                        lfs.back().hea -= 1;
                    }
                }
                else
                {
                    ans[hash[robots[i].pos]] = hea;
                }
            }
        }
        int lf = lfs.size();
        for (int i = 0; i < lf; ++i)
        {
            ans[hash[lfs[i].pos]] = lfs[i].hea;
        }
        vector<int> t;
        for (int i = 0; i < l; ++i)
        {
            if (ans[i] != -1)
            {
                t.push_back(ans[i]);
            }
        }
        return t;
    }
};

/*
    好耶，思路正确的做出来了
    从左向右历遍，遇到向左走前前面没有向右走的直接放行
    遇到向右走的加入队列
    走完再一次把队列里剩下的向右走的加入结果

    太困了，明天再看题解
*/