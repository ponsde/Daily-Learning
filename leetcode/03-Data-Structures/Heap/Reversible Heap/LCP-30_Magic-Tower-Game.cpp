#include <vector>
#include <queue>

using namespace std;

class Solution
{
public:
    int magicTower(vector<int> &nums)
    {
        priority_queue<int, vector<int>, greater<>> pq;
        int l = nums.size();
        long long k = 1;
        for (auto i : nums)
        {
            k += i;
        }
        if (k <= 0)
        {
            return -1;
        }
        int cnt = 0;
        long long sum = 1;
        for (int i = 0; i < l; ++i)
        {
            sum += nums[i];
            if (nums[i] < 0)
            {
                pq.push(nums[i]);
            }
            if (sum <= 0)
            {
                sum -= pq.top();
                cnt++;
                pq.pop();
            }
        }
        return cnt;
    }
};

// 反悔堆
// 先历遍，若是最后加起来的血量 <= 0， 说明无论怎么移，答案都是-1
// 堆里储存扣血量，若是当前sum <= 0，说明扣血太多了，在堆里选一个最大的扣血量然后加到sum，堆弹出，然后继续往后历遍