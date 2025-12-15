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
    ListNode *mergeNodes(ListNode *head)
    {
        ListNode dummy(-1, nullptr);
        auto t = &dummy;
        int sum = 0;
        while (head != nullptr)
        {
            if (head->val == 0 && sum != 0)
            {
                t->next = new ListNode{};
                t = t->next;
                t->val = sum;
                sum = 0;
            }
            sum += head->val;
            head = head->next;
        }
        return dummy.next;
    }
};

// 咋说呢，也是没怎么想，需要注意的是要t->next = new ListNode{};而不是ListNode node，后者会在作用域结束后被释放掉

/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution
{
public:
    ListNode *mergeNodes(ListNode *head)
    {
        int sum = 0;
        auto first = head;
        auto dummy = head;
        while (head != nullptr)
        {
            if (head->val == 0 && sum != 0)
            {
                first->val = sum;
                sum = 0;
                if (head->next == nullptr)
                {
                    break;
                }
                first = first->next;
            }
            sum += head->val;
            head = head->next;
        }
        first->next = nullptr;
        return dummy;
    }
};

// 修改了一遍
// 这次好很多了
// 3个指针，head遍历链表，first指向当前要赋值的节点，dummy指向链表头
// sum记录当前段的和
// 每当遇到0且sum不为0时，说明前一段结束，将sum赋值给first节点，然后将first后移一位，sum归0
// 最后将first->next置空，防止多余节点
// 返回dummy即可