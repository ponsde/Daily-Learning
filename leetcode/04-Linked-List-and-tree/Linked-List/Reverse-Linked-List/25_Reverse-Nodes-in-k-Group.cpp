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
    ListNode *reverseKGroup(ListNode *head, int k)
    {
        ListNode dummy(0, head);
        ListNode *p = &dummy;
        int cnt = 0;
        ListNode *advance = head;
        while (advance != nullptr)
        {
            advance = advance->next;
            cnt++;
            if (cnt == k)
            {
                cnt = 0;
                ListNode *pre = nullptr;
                ListNode *cur = p->next;
                for (int i = 0; i < k; ++i)
                {
                    ListNode *t = cur->next;
                    cur->next = pre;
                    pre = cur;
                    cur = t;
                }
                ListNode *last = p->next;
                p->next->next = cur;
                p->next = pre;
                p = last;
            }
        }
        return dummy.next;
    }
};

// so easy啦，一遍过，甚至没有编译错误
// 只要理解了，并不算难
// 通过advance指针前进计数，当满足k个数时，对k进行反转
// p指针作为连接器，每一次反转结束后，到反转链表的末尾节点，从而能不断重复