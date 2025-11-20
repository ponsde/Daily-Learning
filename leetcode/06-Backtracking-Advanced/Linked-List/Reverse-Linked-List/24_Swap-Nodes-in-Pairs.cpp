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
    ListNode *swapPairs(ListNode *head)
    {
        ListNode dummy(0, head);
        ListNode *p = &dummy;
        ListNode *advance = head;
        int cnt = 0;
        while (advance != nullptr)
        {
            advance = advance->next;
            cnt++;
            if (cnt == 2)
            {
                cnt = 0;
                ListNode *pre = nullptr;
                ListNode *cur = p->next;
                for (int i = 0; i < 2; ++i)
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

// 思路做法跟25一样，只不过25是每k个反转，这里是每2个反转