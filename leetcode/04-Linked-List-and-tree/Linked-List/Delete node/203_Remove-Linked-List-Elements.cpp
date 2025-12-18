using namespace std;

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
    ListNode *removeElements(ListNode *head, int val)
    {
        ListNode dummy(0, head);
        auto cur = &dummy;
        while (cur != nullptr)
        {
            while (cur->next != nullptr && cur->next->val == val)
            {
                cur->next = cur->next->next;
            }
            cur = cur->next;
        }
        return dummy.next;
    }
};

// 当遇到需要删除的节点时，直接将当前节点的 next 指向下下个节点即可