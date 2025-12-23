struct ListNode
{
    int val;
    ListNode *next;
    ListNode() : val(0), next(nullptr) {}
    ListNode(int x) : val(x), next(nullptr) {}
    ListNode(int x, ListNode *next) : val(x), next(next) {}
};

class Solution
{
public:
    ListNode *detectCycle(ListNode *head)
    {
        ListNode *slow = head;
        ListNode *fast = head;
        while (fast && fast->next)
        {
            slow = slow->next;
            fast = fast->next->next;
            if (slow == fast)
            {
                while (head != slow)
                {
                    head = head->next;
                    slow = slow->next;
                }
                return head;
            }
        }
        return nullptr;
    }
};

// 注意fast的步数是slow的2倍
// 当fast与slow相遇时，fast走了a + b + k(b + c)步，slow走了a + b步
// 2（a + b）= a + b + k(b + c)
// => a = c + (k - 1)(b + c)
// 也就是说从head走a步会到达环的入口处，而从相遇点走c步也会到达环的入口处
// 因此当相遇后，slow走c步时，head走a步，两者会在环的入口处相遇

// https: // leetcode.cn/problems/linked-list-cycle-ii/solutions/1999271/mei-xiang-ming-bai-yi-ge-shi-pin-jiang-t-nvsq/