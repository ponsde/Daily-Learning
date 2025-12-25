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
    ListNode *reverseList(ListNode *node)
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

    ListNode *mulList(ListNode *list, int carry)
    {
        if (list == nullptr && carry == 0)
        {
            return nullptr;
        }
        int n = carry;
        if (list)
        {
            n += list->val * 2;
            list = list->next;
        }
        return new ListNode(n % 10, mulList(list, n / 10));
    }

public:
    ListNode *doubleIt(ListNode *head)
    {
        ListNode *t = reverseList(head);
        ListNode *k = mulList(t, 0);
        return reverseList(k);
    }
};

// 第一反应是之前两数相加的做法，但速度有点慢

class Solution
{
public:
    ListNode *doubleIt(ListNode *head)
    {
        if (head->val > 4)
        {
            head = new ListNode(0, head);
        }
        auto t = head;
        while (head)
        {
            head->val = head->val * 2 % 10;
            if (head->next && head->next->val > 4)
            {
                head->val++;
            }
            head = head->next;
        }
        return t;
    }
};

// 因为就一个列表，可以不用向两数相加一样做，当什么时候需要进位? 当node的val>4时需要进位
// 开头检查head的val是否大于4，若大于则往前放一个0节点，然后历遍，每个节点 * 2 % 10，若下一个节点大于4，则当前节点的val+1
// 不用担心出现 9 + 1 导致进位，val * 2无法出现9，同时进位的值最多为1