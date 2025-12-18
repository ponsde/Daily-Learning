#include <numeric>

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
    ListNode *insertGreatestCommonDivisors(ListNode *head)
    {
        ListNode *pre = nullptr;
        ListNode *cur = head;
        while (cur->next)
        {
            pre = cur;
            cur = cur->next;
            int k = gcd(pre->val, cur->val);
            ListNode *t = new ListNode(k, cur);
            pre->next = t;
        }
        return head;
    }
};

// 获得 ListNode* 使用 new ListNode(k, cur)
// 其他都简单