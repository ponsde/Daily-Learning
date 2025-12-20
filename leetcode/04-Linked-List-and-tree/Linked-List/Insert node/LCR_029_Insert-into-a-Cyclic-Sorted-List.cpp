#include <iostream>

using namespace std;

class Node
{
public:
    int val;
    Node *next;

    Node() {}

    Node(int _val)
    {
        val = _val;
        next = NULL;
    }

    Node(int _val, Node *_next)
    {
        val = _val;
        next = _next;
    }
};

class Solution
{
public:
    Node *insert(Node *head, int insertVal)
    {

        if (head == nullptr)
        {
            head = new Node(insertVal);
            head->next = head;
            return head;
        }
        auto cur = head;
        while (cur->next != head)
        {
            if (cur->next->val < cur->val)
            {
                if (cur->next->val >= insertVal)
                {
                    break;
                }
                if (cur->val <= insertVal)
                {
                    break;
                }
            }

            if (cur->val <= insertVal && cur->next->val >= insertVal)
            {
                break;
            }
            cur = cur->next;
        }
        cur->next = new Node(insertVal, cur->next);
        return head;
    }
};

// 插入的分为3种情况
// 情况1，正常插入，即插入值在两个节点值之间
// 情况2，插入值大于所有值，即插入在最大和最小的中间
// 情况3，插入值小于所有值，即插入在最大和最小的中间
// 情况2和情况3可以合并成一种情况来处理，即插入值不在两个节点值之间时，找到最大和最小的节点进行插入

// 重做一遍