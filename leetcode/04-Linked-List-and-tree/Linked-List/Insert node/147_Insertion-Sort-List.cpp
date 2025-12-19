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
    ListNode *insertionSortList(ListNode *head)
    {
        ListNode dummy(0, nullptr);
        auto cur = head;
        while (cur != nullptr)
        {
            ListNode *t = &dummy;
            while (t->next && t->next->val < cur->val)
            {
                t = t->next;
            }
            ListNode *k = t->next;
            t->next = cur;
            cur = cur->next;
            t->next->next = k;
        }
        return dummy.next;
    }
};

// 还算简单的插入排序
// 新建一个dummy，然后每当遇到一个cur，判断当cur的值是否大于t->next的值
// 如果大于就继续往后找，直到找到一个不大于cur的值或者t->next为空
// 然后把cur插入到t和t->next之间
// 注意cur = cur->next 和 t->next->next = k 的顺序不能互换，呼唤后cur的next就是k而不是想要的了