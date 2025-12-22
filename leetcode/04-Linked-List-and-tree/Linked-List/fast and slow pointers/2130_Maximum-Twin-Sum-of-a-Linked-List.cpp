#include <algorithm>

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
    int pairSum(ListNode *head)
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
        while (cur != nullptr)
        {
            auto t = cur->next;
            cur->next = pre;
            pre = cur;
            cur = t;
        }
        int ans = 0;
        while (pre)
        {
            ans = max(pre->val + head->val, ans);
            pre = pre->next;
            head = head->next;
        }
        return ans;
    }
};

// 跟234没啥差别，先用快慢指针找到中点，然后反转后半部分链表
// 最后前后两部分链表一起遍历，计算对应节点值之和