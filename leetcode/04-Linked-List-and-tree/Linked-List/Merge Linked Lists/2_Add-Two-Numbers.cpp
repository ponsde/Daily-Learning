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
    ListNode *head;
    void help(ListNode *node1, ListNode *node2, bool check)
    {
        if (node1 == nullptr && node2 == nullptr && check == false)
        {
            return;
        }
        int n1 = (node1 == nullptr) ? 0 : node1->val;
        int n2 = (node2 == nullptr) ? 0 : node2->val;
        int m = n1 + n2 + check;
        bool add = false;
        if (m >= 10)
        {
            add = true;
            m -= 10;
        }
        head->next = new ListNode;
        head = head->next;
        head->val = m;
        help((node1 == nullptr) ? node1 : node1->next, (node2 == nullptr) ? node2 : node2->next, add);
    };

public:
    ListNode *addTwoNumbers(ListNode *l1, ListNode *l2)
    {
        ListNode dummy(0, nullptr);
        head = &dummy;
        help(l1, l2, false);
        return dummy.next;
    }
};

// 最开始想的历遍结果不知道为什么会有错误，后面用了递归，但我这个丑丑的

class Solution
{
    ListNode *help(ListNode *l1, ListNode *l2, int carry)
    {
        if (l1 == nullptr && l2 == nullptr && carry == 0)
        {
            return nullptr;
        }
        int n = carry;
        if (l1)
        {
            n += l1->val;
            l1 = l1->next;
        }
        if (l2)
        {
            n += l2->val;
            l2 = l2->next;
        }
        return new ListNode(n % 10, help(l1, l2, n / 10));
    }

public:
    ListNode *addTwoNumbers(ListNode *l1, ListNode *l2)
    {
        ListNode dummy(0, nullptr);
        dummy.next = help(l1, l2, 0);
        return dummy.next;
    }
};

// 灵神的方法，更好看点