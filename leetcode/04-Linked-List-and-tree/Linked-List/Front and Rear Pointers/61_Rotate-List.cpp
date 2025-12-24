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
    ListNode *rotateRight(ListNode *head, int k)
    {
        ListNode dummy(0, head);
        auto right = &dummy;
        auto left = &dummy;
        int length = 0;
        auto t = head;
        if (head == nullptr)
        {
            return head;
        }
        while (t != nullptr)
        {
            length++;
            t = t->next;
        }
        int gap = k % length;
        for (int i = 0; i < gap; ++i)
        {
            right = right->next;
        }
        while (right->next != nullptr)
        {
            left = left->next;
            right = right->next;
        }
        right->next = dummy.next;
        dummy.next = left->next;
        left->next = nullptr;
        return dummy.next;
    }
};

// 想了一会，发现还是要历遍两次
// 往右移动k位，相当于往右移动k % length位，然后将后面的接到前面去
// 先算出链表长度length，然后k % length，之后用双指针
// right指针先走k % length步，然后left和right一起走，直到right->next为空
// 此时的left->next就是新的头节点，right指向最后一个节点
// 将right->next指向原先的头节点dummy.next
// 然后dummy.next指向left->next
// 最后将left->next置为空，断开连接