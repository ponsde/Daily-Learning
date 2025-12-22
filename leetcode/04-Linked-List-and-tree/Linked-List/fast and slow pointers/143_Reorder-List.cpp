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
    void reorderList(ListNode *head)
    {
        ListNode *slow = head;
        ListNode *fast = head;
        while (fast && fast->next)
        {
            slow = slow->next;
            fast = fast->next->next;
        }
        ListNode *pre = nullptr;
        ListNode *cur = slow;
        while (cur)
        {
            auto t = cur->next;
            cur->next = pre;
            pre = cur;
            cur = t;
        }
        while (pre->next)
        {

            ListNode *m = pre->next;
            ListNode *n = head->next;
            head->next = pre;
            head->next->next = n;
            pre = m;
            head = head->next->next;
        }
        // 这俩个while等效
        while (pre->next)
        {

            ListNode *m = pre->next;
            ListNode *n = head->next;
            head->next = pre;
            pre->next = n;
            pre = m;
            head = n;
        }
    }
};

// 跟前面234没啥差别，先用快慢指针找到中点，然后反转后半部分链表
// 然后两个历遍，先旧的再新的这样交替排列就好了

// 就是我没多想条件就过了，感觉有点怪怪的

// 我似乎想出来了，前半部分的最后一个的next连的还是反转后的最后一个节点
// 当while条件不符合跳出是，虽然没有进行最后一个节点加上的操作，但因为原先就已经连着了，所以过了
