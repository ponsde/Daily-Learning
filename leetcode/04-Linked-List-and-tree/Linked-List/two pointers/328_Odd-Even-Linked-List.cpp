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
    ListNode *oddEvenList(ListNode *head)
    {
        ListNode *first = head;
        if (head == nullptr || head->next == nullptr)
        {
            return first;
        }
        ListNode *second = head->next;
        ListNode *t = second;
        while (second && second->next)
        {
            first->next = second->next;
            first = first->next;
            second->next = first->next;
            second = second->next;
        }
        first->next = t;
        return head;
    }
};

// 不算难的题，先通过检查head和head->next，防止空指针异常
// 然后通过两个指针first和second分别指向奇数和偶数位置的节点
// 通过循环将奇数位置的节点连接在一起，偶数位置的节点连接在一起
// 最后将奇数位置的最后一个节点指向偶数位置的第一个节点即可