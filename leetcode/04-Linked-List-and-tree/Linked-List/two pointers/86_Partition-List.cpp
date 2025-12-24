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
    ListNode *partition(ListNode *head, int x)
    {
        if (head == nullptr)
        {
            return nullptr;
        }
        ListNode dummy1(0, head);
        ListNode *first = &dummy1;
        ListNode dummy(0, nullptr);
        ListNode *second = &dummy;
        while (first && first->next)
        {
            if (first->next->val >= x)
            {
                second->next = first->next;
                second = second->next;
                first->next = first->next->next;
                continue;
            }
            first = first->next;
        }
        first->next = dummy.next;
        second->next = nullptr;
        return dummy1.next;
    }
};

// 记得将second的next置空，否则会形成环，然后second的指针往回指，就出问题了
// 其他就还好，不算难
// 因为head的头不一样小于x，因此first用了个dummy节点，second也用了个dummy节点