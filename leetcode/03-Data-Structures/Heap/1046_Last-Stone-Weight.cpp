#include <algorithm>
#include <vector>
#include <queue>

using namespace std;

class Solution
{
public:
    int lastStoneWeight(vector<int> &stones)
    {
        make_heap(stones.begin(), stones.end());
        while (stones.size() > 1)
        {
            int y = stones.front();
            pop_heap(stones.begin(), stones.end());
            stones.pop_back();
            int x = stones.front();
            pop_heap(stones.begin(), stones.end());
            if (x == y)
            {
                stones.pop_back();
                if (stones.empty())
                {
                    return 0;
                }
            }
            else
            {
                stones.back() = y - x;
                push_heap(stones.begin(), stones.end());
            }
        }
        return stones[0];
    }
};

// 简单题

class Solution
{
public:
    int lastStoneWeight(vector<int> &stones)
    {
        priority_queue<int> pq(stones.begin(), stones.end());
        while (pq.size() > 1)
        {
            int y = pq.top();
            pq.pop();
            int x = pq.top();
            pq.pop();
            if (x != y)
            {
                pq.push(y - x);
            }
        }
        return pq.empty() ? 0 : pq.top();
    }
};
