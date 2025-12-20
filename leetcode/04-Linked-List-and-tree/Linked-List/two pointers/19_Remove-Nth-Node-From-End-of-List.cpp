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
    ListNode *removeNthFromEnd(ListNode *head, int n)
    {
        ListNode dummy(0, head);
        auto left = &dummy;
        auto right = &dummy;
        for (int i = 0; i < n; ++i)
        {
            right = right->next;
        }
        while (right->next != nullptr)
        {
            left = left->next;
            right = right->next;
        }
        left->next = left->next->next;
        return dummy.next;
    }
};

// 问倒数第几个，为了不二次历遍优化
// right指针往后走，当走到为空时，让left指针在要删除的节点的前一个节点就好
// dummy节点简化边界条件处理
// right先走n步，然后left和right一起走，直到right->next为空
