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
    ListNode *removeZeroSumSublists(ListNode *head)
    {
        unordered_map<int, ListNode *> hash;
        ListNode dummy(0, head);
        int s = 0;
        auto cur = &dummy;
        while (cur)
        {
            s += cur->val;
            hash[s] = cur;
            cur = cur->next;
        }
        s = 0;
        cur = &dummy;
        while (cur)
        {
            s += cur->val;
            auto it = hash.find(s);
            if (it != hash.end())
            {
                cur->next = it->second->next;
            }
            cur = cur->next;
        }
        return dummy.next;
    }
};

// 先一遍一次看前缀和相同的最后一个节点在哪
// 然后第二遍历遍，把前缀和相同的节点之间的节点都删掉
// 不用担心删了之后如果历遍到后面会不会指向删除的节点
// 若是指向删除的节点，说明前面到删除节点的前缀和等于前面到该节点的距离，而储存的会是最后的
// 因此hash表里的是该节点