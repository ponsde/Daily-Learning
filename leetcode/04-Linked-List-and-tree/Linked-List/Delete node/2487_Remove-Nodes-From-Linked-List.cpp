#include <deque>

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
    ListNode *removeNodes(ListNode *head)
    {
        ListNode dummy(0, head);
        auto cur = &dummy;
        deque<pair<int, ListNode *>> dq;
        while (cur != nullptr)
        {
            while (!dq.empty() && cur && cur->val > dq.back().first)
            {
                dq.pop_back();
            }
            if (!cur)
            {
                break;
            }
            dq.push_back(make_pair(cur->val, cur));
            cur = cur->next;
        }
        auto t = &dummy;
        int ld = dq.size();
        for (int i = 0; i < ld; ++i)
        {
            t->next = dq[i].second;
            t = t->next;
        }
        return dummy.next;
    }
};

// 最开始想到的单调栈，但速度有点慢

class Solution
{
    ListNode *reverse(ListNode *node)
    {
        ListNode *pre = nullptr;
        ListNode *cur = node;
        while (cur)
        {
            ListNode *t = cur->next;
            cur->next = pre;
            pre = cur;
            cur = t;
        }
        return pre;
    }

public:
    ListNode *removeNodes(ListNode *head)
    {
        auto k = reverse(head);
        auto cur = k;
        while (cur)
        {
            while (cur->next && cur->next->val < cur->val)
            {
                cur->next = cur->next->next;
            }
            cur = cur->next;
        }
        return reverse(k);
    }
};

// 翻转两次链表
// 第一次翻转完，要求是右侧没有更大的点看做左边没有更大的点，即去除右边小于当前cur->val的节点，开头不会消失，因此无需dummy
// 然后若cur->next的值小于当前，则往后连，直到找到比当前更大的那个