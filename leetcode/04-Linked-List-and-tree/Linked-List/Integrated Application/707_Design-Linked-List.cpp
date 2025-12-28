struct ListNode
{
    int val;
    ListNode *next;
    ListNode() : val(0), next(nullptr) {}
    ListNode(int x) : val(x), next(nullptr) {}
    ListNode(int x, ListNode *next) : val(x), next(next) {}
};

class MyLinkedList
{
    ListNode *head = nullptr;
    int size = 0;

public:
    MyLinkedList()
    {
    }

    int get(int index)
    {
        if (index >= size)
        {
            return -1;
        }
        auto k = head;
        for (int i = 0; i < index; ++i)
        {
            k = k->next;
        }
        return k->val;
    }

    void addAtHead(int val)
    {
        ListNode *n = new ListNode(val, head);
        head = n;
        size++;
    }

    void addAtTail(int val)
    {
        ListNode *m = new ListNode(val, nullptr);
        size++;
        if (size == 1)
        {
            head = m;
            return;
        }
        auto k = head;
        while (k->next)
        {
            k = k->next;
        }
        k->next = m;
    }

    void addAtIndex(int index, int val)
    {
        if (index > size)
        {
            return;
        }
        else if (index <= 0)
        {
            ListNode *n = new ListNode(val, head);
            head = n;
        }
        else
        {
            auto k = head;
            for (int i = 0; i < index - 1; ++i)
            {
                k = k->next;
            }
            ListNode *m = new ListNode(val, k->next);
            k->next = m;
        }
        size++;
    }

    void deleteAtIndex(int index)
    {
        if (index >= size || index < 0)
        {
            return;
        }
        auto k = head;
        if (index == 0)
        {
            head = head->next;
            size--;
            return;
        }
        for (int i = 0; i < index - 1; ++i)
        {
            k = k->next;
        }
        k->next = k->next->next;
        size--;
    }
};

/**
 * Your MyLinkedList object will be instantiated and called as such:
 * MyLinkedList* obj = new MyLinkedList();
 * int param_1 = obj->get(index);
 * obj->addAtHead(val);
 * obj->addAtTail(val);
 * obj->addAtIndex(index,val);
 * obj->deleteAtIndex(index);
 */
class MyLinkedList
{
    ListNode *head = nullptr;
    int size = 0;

public:
    MyLinkedList()
    {
    }

    int get(int index)
    {
        if (index >= size)
        {
            return -1;
        }
        auto k = head;
        for (int i = 0; i < index; ++i)
        {
            k = k->next;
        }
        return k->val;
    }

    void addAtHead(int val)
    {
        ListNode *n = new ListNode(val, head);
        head = n;
        size++;
    }

    void addAtTail(int val)
    {
        ListNode *m = new ListNode(val, nullptr);
        size++;
        if (size == 1)
        {
            head = m;
            return;
        }
        auto k = head;
        while (k->next)
        {
            k = k->next;
        }
        k->next = m;
    }

    void addAtIndex(int index, int val)
    {
        if (index > size)
        {
            return;
        }
        else if (index <= 0)
        {
            ListNode *n = new ListNode(val, head);
            head = n;
        }
        else
        {
            auto k = head;
            for (int i = 0; i < index - 1; ++i)
            {
                k = k->next;
            }
            ListNode *m = new ListNode(val, k->next);
            k->next = m;
        }
        size++;
    }

    void deleteAtIndex(int index)
    {
        if (index >= size || index < 0)
        {
            return;
        }
        auto k = head;
        if (index == 0)
        {
            head = head->next;
            size--;
            return;
        }
        for (int i = 0; i < index - 1; ++i)
        {
            k = k->next;
        }
        k->next = k->next->next;
        size--;
    }
};

// 这个要思考的小错误挺多的，之后再来写写