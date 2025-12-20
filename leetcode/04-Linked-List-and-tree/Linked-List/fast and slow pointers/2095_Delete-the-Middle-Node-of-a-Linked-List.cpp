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
    ListNode *deleteMiddle(ListNode *head)
    {
        ListNode dummy(0, head);
        ListNode *slow = head;
        ListNode *fast = head;
        ListNode *pre = &dummy;
        while (fast && fast->next)
        {
            pre = slow;
            slow = slow->next;
            fast = fast->next->next;
        }
        pre->next = slow->next;
        return dummy.next;
    }
};

// 因为存在首节点被删除的情况，加个dummy节点
// pre指向slow的前一个节点

// 找中间就统一快慢指针然后head开始
