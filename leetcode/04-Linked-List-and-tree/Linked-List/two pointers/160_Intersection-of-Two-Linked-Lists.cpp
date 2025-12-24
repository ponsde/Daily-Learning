#include <unordered_map>

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
    ListNode *getIntersectionNode(ListNode *headA, ListNode *headB)
    {
        unordered_map<ListNode *, int> hash;
        while (headA || headB)
        {
            if (headA)
            {
                hash[headA]++;
                if (hash[headA] > 1)
                {
                    return headA;
                }
                headA = headA->next;
            }
            if (headB)
            {
                hash[headB]++;
                if (hash[headB] > 1)
                {
                    return headB;
                }
                headB = headB->next;
            }
        }
        return nullptr;
    }
};

// 第一反应使用个hash表存储节点地址，然后遍历另一个链表寻找交点，但速度有点慢

class Solution
{
public:
    ListNode *getIntersectionNode(ListNode *headA, ListNode *headB)
    {
        ListNode *A = headA;
        ListNode *B = headB;
        while (A != B)
        {
            A = (A == nullptr) ? A = headB : A = A->next;
            B = (B == nullptr) ? B = headA : B = B->next;
        }
        return A;
    }
};

// 妙啊
// 假设链表A的长度为a，链表B的长度为b，重叠部分为c，假设c>0
// A走a-c到交汇点，B走b-c到交汇点
// 当A走完a是然后走b-c步和B走完b然后走a-c步会在交汇点相遇
// 如果c=0，那么A和B会同时为nullptr相遇，因为他检查的是A == nullptr而不是A->next == nullptr->next，因此会完美处理没有交点的情况
// 完美啊
