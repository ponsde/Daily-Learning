#include <queue>
#include <vector>
#include <functional>

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
    ListNode *sortList(ListNode *head)
    {
        auto cmp = [](ListNode *a, ListNode *b)
        {
            return a->val > b->val;
        };
        priority_queue<ListNode *, vector<ListNode *>, decltype(cmp)> pq(cmp);
        for (auto i = head; i != nullptr; i = i->next)
        {
            pq.push(i);
        }
        ListNode dummy(0, nullptr);
        auto cur = &dummy;
        while (!pq.empty())
        {
            cur->next = pq.top();
            pq.pop();
            cur = cur->next;
        }
        cur->next = nullptr;
        return dummy.next;
    }
};

class Solution
{
    ListNode *help(ListNode *l1, ListNode *l2)
    {
        if (!l1 || !l2)
        {
            return l1 ? l1 : l2;
        }
        if (l1->val < l2->val)
        {
            l1->next = help(l1->next, l2);
            return l1;
        }
        else
        {
            l2->next = help(l1, l2->next);
            return l2;
        }
    }

public:
    ListNode *sortList(ListNode *head)
    {
        if (head == nullptr || head->next == nullptr)
        {
            return head;
        }
        ListNode *slow = head;
        ListNode *fast = head;
        ListNode *pre = nullptr;
        while (fast && fast->next)
        {
            pre = slow;
            slow = slow->next;
            fast = fast->next->next;
        }
        pre->next = nullptr;
        return help(sortList(head), sortList(slow));
    }
};

// 分治，不断地切切切，等切到不能再切时一一合并，就像归并排序一样
// 好玩，再做一遍