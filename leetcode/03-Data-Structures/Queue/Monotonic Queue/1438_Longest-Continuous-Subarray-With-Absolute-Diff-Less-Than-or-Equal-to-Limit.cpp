#include <deque>
#include <vector>

using namespace std;

class Solution
{
public:
    int longestSubarray(vector<int> &nums, int limit)
    {
        int l = nums.size();
        deque<int> up;
        deque<int> down;
        int ans = 0;
        int left = 0;
        for (int i = 0; i < l; ++i)
        {
            while (!up.empty() && nums[i] <= nums[up.back()])
            {

                up.pop_back();
            }
            up.push_back(i);
            while (!down.empty() && nums[i] >= nums[down.back()])
            {

                down.pop_back();
            }
            down.push_back(i);
            while (nums[down.front()] - nums[up.front()] > limit)
            {
                if (up.front() == left)
                {
                    up.pop_front();
                }
                if (down.front() == left)
                {
                    down.pop_front();
                }

                left++;
            }
            if (!up.empty() && !down.empty())
            {
                ans = max(ans, i - left + 1);
            }
        }
        return ans;
    }
};

// 通过两个单调队列维护当前窗口的最大值和最小值
// left 和 right 指针维护当前窗口的左右边界
// 若是当前窗口的最大值和最小值之差大于 limit，则移动 left 指针缩小窗口，直到满足条件为止
// 之后要再写一遍