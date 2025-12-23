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
    bool hasCycle(ListNode *head)
    {
        ListNode *slow = head;
        ListNode *fast = head;
        while (fast && fast->next)
        {
            slow = slow->next;
            fast = fast->next->next;
            if (fast == slow)
            {
                return true;
            }
        }
        return false;
    }
};

// fast走在slow前面，若是fast走到nullptr，说明没有环，若是fast遇到slow，说明有环
// 注意if语句的位置，必须在while里面每次更新完指针后判断，不然放前面的时候，刚开始fast和slow就是head只会返回true
