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
    ListNode *deleteDuplicates(ListNode *head)
    {
        ListNode dummy(0, head);
        auto t = &dummy;
        while (t != nullptr)
        {
            auto cur = t;
            cur = cur->next;
            if (cur == nullptr)
            {
                break;
            }
            bool check = false;
            while (cur->next != nullptr && cur->next->val == cur->val)
            {
                check = true;
                cur->next = cur->next->next;
            }
            t->next = check ? cur->next : cur;
            t = check ? t : t->next;
        }
        return dummy.next;
    }
};

// 通过check标记是否有重复节点，若没有则cur为下一个，若有则cur->next为下一个
// 不是很优雅

class Solution
{
public:
    ListNode *deleteDuplicates(ListNode *head)
    {
        ListNode dummy(0, head);
        auto cur = &dummy;
        while (cur->next && cur->next->next)
        {
            int val = cur->next->val;
            if (cur->next->next->val == val)
            {
                while (cur->next && cur->next->val == val)
                {
                    cur->next = cur->next->next;
                }
            }
            else
            {
                cur = cur->next;
            }
        }
        return dummy.next;
    }
};

// 更优雅好看的写法
