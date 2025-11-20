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
    ListNode *reverseEvenLengthGroups(ListNode *head)
    {
        ListNode dummy(0, head);
        ListNode *p = &dummy;
        ListNode *advance = head;
        int rest = 0;
        while (advance != nullptr)
        {
            advance = advance->next;
            rest++;
        }
        int cp = 1;
        while (rest > 0)
        {
            int l = min(rest, cp);
            if (l % 2 != 0)
            {
                for (int j = 0; j < l; ++j)
                {
                    p = p->next;
                }
            }
            else
            {
                ListNode *pre = nullptr;
                ListNode *cur = p->next;
                for (int j = 0; j < l; ++j)
                {
                    ListNode *t = cur->next;
                    cur->next = pre;
                    pre = cur;
                    cur = t;
                }
                ListNode *last = p->next;
                p->next->next = cur;
                p->next = pre;
                p = last;
            }
            rest -= cp;
            cp++;
        }
        return dummy.next;
    }
};

// 这题需要先算出链表的长度，不太好一次历遍，要两次
// 有个坑是，当cp增加时，若剩余部分不足cp，则需要将剩余部分单独做组，根据剩余部分是奇是偶来做
// 其他的应该都还好