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

// 这种题目用小根堆好舒服啊，又简单又快，但没用分治，之后再试试
// 堆要用decltype转换，需要类型而不是对象，lambda是对象