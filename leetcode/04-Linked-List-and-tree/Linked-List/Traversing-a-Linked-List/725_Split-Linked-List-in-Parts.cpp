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
public:
    vector<ListNode *> splitListToParts(ListNode *head, int k)
    {
        int l = 0;
        auto t = head;
        while (t != nullptr)
        {
            l++;
            t = t->next;
        }
        auto advance = head;
        int m = l / k;
        int rest = l % k;
        int cnt = 0;
        vector<ListNode *> ans(k);
        for (int i = 0; i < k; ++i)
        {
            auto s = advance;
            ListNode *cur = nullptr;
            int p = i < rest ? 1 : 0;
            for (int j = 0; j < m + p && advance != nullptr; ++j)
            {
                cur = advance;
                advance = advance->next;
            }
            if (cur != nullptr)
            {
                cur->next = nullptr;
            }
            ans[i] = s;
        }
        return ans;
    }
};

// 通过m计算基本情况下每一段的长度
// 通过rest计算前rest段需要多加1个节点
// 历遍head，若为前rest端，则需要m+1个节点，否则m个节点
// 当advance指针为空时，说明已经走到底了，此时剩余的段均为空，直接返回nullptr即可
// 不用担心出现m为3，node只有1，要补充2个nullptr的情况，因为不会出现
// m为基准，不会出现该情况

// 记得重做一遍