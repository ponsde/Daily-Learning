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
    ListNode *swapNodes(ListNode *head, int k)
    {
        ListNode dummy(0, head);
        ListNode *left = &dummy;
        ListNode *right = &dummy;
        ListNode *t;
        for (int i = 0; i < k; ++i)
        {
            if (i == k - 1)
            {
                t = right;
            }
            right = right->next;
        }
        while (right->next != nullptr)
        {
            left = left->next;
            right = right->next;
        }
        auto a = left->next->val;
        auto b = t->next->val;
        t->next->val = a;
        left->next->val = b;
        return dummy.next;
    }
};

// t走到第k个节点的前一个
// left走到第n-k个节点的前一个
// 交换left->next和t->next的值

/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution
{
public:
    ListNode *swapNodes(ListNode *head, int k)
    {
        ListNode *left = head;
        ListNode *right = head;
        ListNode *t;
        for (int i = 0; i < k; ++i)
        {
            if (i == k - 1)
            {
                t = right;
            }
            right = right->next;
        }
        while (right != nullptr)
        {
            left = left->next;
            right = right->next;
        }
        auto a = left->val;
        auto b = t->val;
        t->val = a;
        left->val = b;
        return head;
    }
};

// 可以不用dummy
// left和right在head开始
// right走k步，t为第k-1个节点
// left和right相对于从dummy开始都多走了一步
// 因此while条件变为right != nullptr，同时left为倒数第k个而不是倒数第k个的前一个