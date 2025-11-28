#include <vector>
#include <queue>

using namespace std;

class Solution
{
public:
    int furthestBuilding(vector<int> &heights, int bricks, int ladders)
    {
        int l = heights.size();
        priority_queue<int> pq;
        int i;
        for (i = 0; i < l - 1;)
        {
            int delta = heights[i + 1] - heights[i];
            if (delta <= 0)
            {
                ++i;
                continue;
            }
            if (delta > 0)
            {
                if (bricks >= delta)
                {
                    bricks -= delta;
                    pq.push(delta);
                    ++i;
                }
                else
                {
                    if (ladders > 0)
                    {
                        ladders--;
                        if (!pq.empty() && delta > pq.top())
                        {
                            ++i;
                            continue;
                        }
                        if (pq.empty() && delta > bricks)
                        {
                            ++i;
                            continue;
                        }
                        if (!pq.empty())
                        {
                            bricks += pq.top();
                            pq.pop();
                        }
                    }
                    else
                    {
                        return i;
                    }
                }
            }
        }
        return i;
    }
};

// 下面这版更好，更模板一点

class Solution
{
public:
    int furthestBuilding(vector<int> &heights, int bricks, int ladders)
    {
        int l = heights.size();
        priority_queue<int> pq;
        int i;
        for (i = 0; i < l - 1; ++i)
        {
            int delta = heights[i + 1] - heights[i];
            if (delta <= 0)
            {
                continue;
            }
            bricks -= delta;
            pq.push(delta);
            if (bricks < 0)
            {
                if (ladders == 0)
                {
                    break;
                }
                bricks += pq.top();
                pq.pop();
                ladders--;
                continue;
            }
        }
        return i;
    }
};

// 还好，不算太难
// 从左向右历遍，优先使用方块，若是方块不够时，先看相差的delta跟最多使用的方块数目那个多
// 若是delta更大，则使用梯子于该delta而不是用在之前最多使用的方块数目的地方
// 若是pq为空，说明前面没有使用块依旧过不去，就要用梯子