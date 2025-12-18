#

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
        auto t = head;
        while (head != nullptr)
        {
            while (head->next != nullptr && head->next->val == head->val)
            {
                head->next = head->next->next;
            }
            head = head->next;
        }
        return t;
    }
};

// 直接遍历链表，遇到重复节点则跳过