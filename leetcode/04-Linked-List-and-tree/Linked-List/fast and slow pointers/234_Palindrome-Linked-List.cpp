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
    bool isPalindrome(ListNode *head)
    {
        ListNode *slow = head;
        ListNode *fast = head;
        while (fast && fast->next)
        {
            slow = slow->next;
            fast = fast->next->next;
        }
        ListNode *pre = nullptr;
        ListNode *cur = slow;
        while (cur != nullptr)
        {
            auto nxt = cur->next;
            cur->next = pre;
            pre = cur;
            cur = nxt;
        }
        while (head && pre)
        {
            if (head->val != pre->val)
            {
                return false;
            }
            head = head->next;
            pre = pre->next;
        }
        return true;
    }
};

// 很好玩，不是常规的思路，通过快慢指针找中间，然后反转后半部分链表，再和前半部分比较
// 可以再做一遍