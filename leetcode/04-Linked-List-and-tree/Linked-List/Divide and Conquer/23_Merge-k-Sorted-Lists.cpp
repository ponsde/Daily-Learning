#include <vector>

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
    ListNode *merge(ListNode *l1, ListNode *l2)
    {
        ListNode dummy(0, nullptr);
        auto cur = &dummy;
        while (l1 || l2)
        {
            if (l1 == nullptr || l2 == nullptr)
            {
                cur->next = (l1 == nullptr) ? l2 : l1;
                break;
            }
            if (l1->val < l2->val)
            {
                cur->next = l1;
                cur = cur->next;
                l1 = l1->next;
            }
            else
            {
                cur->next = l2;
                cur = cur->next;
                l2 = l2->next;
            }
        }
        return dummy.next;
    }

public:
    ListNode *mergeKLists(vector<ListNode *> &lists)
    {
        int l = lists.size();
        if (l == 0)
        {
            return nullptr;
        }
        for (int i = 1; i < l; i *= 2)
        {
            for (int j = 0; j < l - i; j += 2 * i)
                lists[j] = merge(lists[j], lists[j + i]);
        }
        return lists[0];
    }
};

// 就是没太搞懂步长，之后再做一遍

// 我去，突然理解了，当步长为1时，代表合并大小为1的区间，为2时合并大小为2的区间
// [5][3][8][1][7][2][6][4]
// [3,5]  [1,8]  [2,7]  [4,6]
// [1,3,5,8]    [2,4,6,7]
// [1,2,3,4,5,6,7,8]

// 这样就能理解为什么j += 2 * i了，因为每次合并完后，区间大小变为2*i了
// 然后外层循环i *= 2，代表下一次合并的区间大小变为2*i