#include <vector>

using namespace std;

class Solution
{
public:
    bool circularArrayLoop(vector<int> &nums)
    {

        int l = nums.size();
        for (int i = 0; i < l; ++i)
        {
            if (nums[i] == 0)
            {
                continue;
            }
            bool dir = nums[i] > 0;
            int slow = i;
            int fast = i;
            while (1)
            {
                slow = ((slow + nums[slow]) % l + l) % l;
                int m = ((fast + nums[fast]) % l + l) % l;
                fast = ((m + nums[m]) % l + l) % l;
                bool cs = nums[slow] > 0;
                bool cf = nums[fast] > 0;
                bool cm = nums[m] > 0;
                if (cs != cf || cs != cm || cs != dir)
                {
                    break;
                }
                if (slow == fast)
                {
                    slow = ((slow + nums[slow]) % l + l) % l;
                    if (slow == fast)
                    {
                        break;
                    }
                    return true;
                }
            }
        }
        return false;
    }
};

// 挺丑陋的做法
// 最先确定nums[i]的方面，然后slow和fast都必须在这个方向上走，若是没有，则break开始下一轮
// 注意取模的时候可能会出现负数，因此需要加上l再取模
// 当slow和fast相遇时，判断是否是单个元素的环，若是则break，否则返回true
