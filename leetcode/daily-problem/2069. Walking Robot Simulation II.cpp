#include <bits/stdc++.h>

using namespace std;

class Robot
{
    int w;
    int h;
    int s = 0;

    tuple<int, int, string> getstate()
    {
        if (s < w)
        {
            return {s, 0, "East"};
        }
        else if (s < w + h - 1)
        {
            return {w - 1, s - w + 1, "North"};
        }
        else if (s < w * 2 + h - 2)
        {
            return {w * 2 + h - s - 3, h - 1, "West"};
        }
        else
            return {0, (w + h) * 2 - s - 4, "South"};
    }

public:
    Robot(int width, int height)
    {
        w = width;
        h = height;
    }

    void step(int num)
    {
        s = (s + num - 1) % (2 * (w + h - 2)) + 1;
    }

    vector<int> getPos()
    {
        auto [x, y, _] = getstate();
        return {x, y};
    }

    string getDir()
    {
        auto [_, _, dir] = getstate();
        return dir;
    }
};

/*
   差不多就是看题解过的...
   再做再做
*/