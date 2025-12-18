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
    ListNode *mergeInBetween(ListNode *list1, int a, int b, ListNode *list2)
    {
        int n = b - a;
        ListNode dummy(0, list1);
        ListNode *right = &dummy;
        ListNode *left = &dummy;
        for (int i = 0; i <= n; ++i)
        {
            right = right->next;
        }
        for (int i = 0; i < a; ++i)
        {
            left = left->next;
            right = right->next;
        }
        left->next = list2;
        auto last = list2;
        while (last->next != nullptr)
        {
            last = last->next;
        }
        last->next = right->next;
        return dummy.next;
    }
};

// 嘿嘿，有过计算索引的差避免了二次历遍，用left、right指针定位要删除的区间，接着连接list2即可