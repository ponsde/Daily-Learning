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
    ListNode *help(ListNode *node)
    {
        ListNode *pre = nullptr;
        ListNode *cur = node;
        while (cur)
        {
            ListNode *t = cur->next;
            cur->next = pre;
            pre = cur;
            cur = t;
        }
        return pre;
    }
    ListNode *add(ListNode *l1, ListNode *l2, int carry)
    {
        if (l1 == nullptr && l2 == nullptr && carry == 0)
        {
            return nullptr;
        }
        int n = carry;
        if (l1)
        {
            n += l1->val;
            l1 = l1->next;
        }
        if (l2)
        {
            n += l2->val;
            l2 = l2->next;
        }
        return new ListNode(n % 10, add(l1, l2, n / 10));
    }

public:
    ListNode *addTwoNumbers(ListNode *l1, ListNode *l2)
    {
        ListNode *node1 = help(l1);
        ListNode *node2 = help(l2);
        ListNode dummy(0, nullptr);
        auto cur = &dummy;
        dummy.next = add(node1, node2, 0);
        return help(dummy.next);
    }
};

// 原本数从低位到高位改成从高位到低位排，翻转链表就好了