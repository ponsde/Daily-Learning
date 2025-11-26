#include <vector>
#include <queue>

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
    ListNode *mergeKLists(vector<ListNode *> &lists)
    {
        auto cmp = [](const auto &a, const auto &b)
        {
            return a->val > b->val;
        };
        priority_queue<ListNode *, vector<ListNode *>, decltype(cmp)> pq(cmp);
        int n = lists.size();
        for (int i = 0; i < n; ++i)
        {
            auto &t = lists[i];
            while (t != nullptr)
            {
                pq.push(t);
                t = t->next;
            }
        }
        ListNode dummy{};
        ListNode *head = &dummy;
        while (!pq.empty())
        {
            head->next = pq.top();
            pq.pop();
            head = head->next;
            if (pq.empty()) // 不能放在上面一行，不然head还没到下一个节点，链表会少一个节点
            {
                head->next = nullptr;
                break;
            }
        }
        return dummy.next;
    }
};

// 简单的，注意的是堆排序要反着来，升序时要用大于，同时<>里不能直接用lambda，要decltype（lambda）