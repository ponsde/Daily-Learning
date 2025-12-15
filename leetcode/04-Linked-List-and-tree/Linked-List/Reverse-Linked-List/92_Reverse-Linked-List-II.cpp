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
    ListNode *reverseBetween(ListNode *head, int left, int right)
    {
        ListNode dummy(0, head);
        ListNode *p = &dummy;
        for (int i = 0; i < left - 1; ++i)
        {
            p = p->next;
        }
        ListNode *pre = nullptr;
        ListNode *cur = p->next;
        for (int i = 0; i < right - left + 1; ++i)
        {
            ListNode *t = cur->next;
            cur->next = pre;
            pre = cur;
            cur = t;
        }
        p->next->next = cur;
        p->next = pre;
        return dummy.next;
    }
};

// 通过放入哨兵节点dummy，使其独立于链表，寻找反转后链表的头时只需要dummy.next
// p获得dummy的地址，然后p到left的前一个节点
// 再通过pre、cur反转left 到 right 部分
// 反转后p原先的next成为反转部分的末尾节点，pre为反转部分的头部节点，cur成为反转列表后的第一个节点
// 为了完成连接，p->next->next = cur，为将反转部分的末尾节点连接至反转列表后的第一个节点
// p->next = pre, 为反转列表前的第一个节点连接至反转部分的头部节点