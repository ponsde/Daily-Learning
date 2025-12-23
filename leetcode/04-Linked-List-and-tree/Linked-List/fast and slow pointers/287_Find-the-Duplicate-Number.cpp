#include <vector>

using namespace std;

class Solution
{
public:
    int findDuplicate(vector<int> &nums)
    {
        int slow = 0;
        int fast = 0;
        int l = nums.size();
        while (1)
        {
            slow = nums[slow];
            fast = nums[nums[fast]];
            if (slow == fast)
            {
                break;
            }
        }
        int head = 0;
        while (head != slow)
        {
            head = nums[head];
            slow = nums[slow];
        }
        return slow;
    }
};

// 特殊题目特殊做
// 长度为n + 1的数组，其中的数在1~n之间
// 因为长度大于数值范围，所以一定有重复数字
// 而0不在数值范围内，所以可以把0作为链表的头节点
// 数组的值作为作为下一个节点的索引
// 这样就把数组转换成了链表
// 可以类比142. 环形链表 II
// 重复数字就是环的入口节点
// fast和slow相遇后，让head从头节点出发，slow从相遇节点出发
// 两者每次走一步，最终会在环的入口节点相遇
