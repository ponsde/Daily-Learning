#include <vector>
#include <algorithm>
#include <numeric>
#include <cmath>
#include <queue>

using namespace std;

class Solution
{
public:
    long long pickGifts(vector<int> &gifts, int k)
    {
        make_heap(gifts.begin(), gifts.end());
        for (int i = 0; i < k; ++i)
        {
            pop_heap(gifts.begin(), gifts.end());
            gifts.back() = (int)sqrt(gifts.back());
            push_heap(gifts.begin(), gifts.end());
            if (gifts.front() == 1)
            {
                return gifts.size();
            }
        }
        int l = gifts.size();
        long long ans = accumulate(gifts.begin(), gifts.end(), 0LL);
        return ans;
    }
};

// 第一次开始学堆
// make_heap构成堆，父节点>=子节点，同一个父节点的子节点并无顺序
// pop_heap将堆顶放入堆底，其余部分形成新堆
// push_heap将堆底的数放入堆中（注意，默认将堆底之前的认为已经成为堆，若加入两个数，需一个个push）

class Solution
{
public:
    long long pickGifts(vector<int> &gifts, int k)
    {
        priority_queue<int> pq(gifts.begin(), gifts.end());
        for (int i = 0; i < k; ++i)
        {
            int a = pq.top();
            pq.pop();
            pq.push((int)sqrt(a));
        }
        long long sum = 0;
        while (!pq.empty())
        {
            sum += pq.top();
            pq.pop();
        }
        return sum;
    }
};

// 优先队列就是栈结构