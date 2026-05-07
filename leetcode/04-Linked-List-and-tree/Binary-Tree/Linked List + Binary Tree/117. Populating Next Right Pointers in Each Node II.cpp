#include <bits/stdc++.h>

using namespace std;

class Node
{
  public:
    int val;
    Node *left;
    Node *right;
    Node *next;

    Node() : val(0), left(NULL), right(NULL), next(NULL) {}

    Node(int _val) : val(_val), left(NULL), right(NULL), next(NULL) {}

    Node(int _val, Node *_left, Node *_right, Node *_next)
        : val(_val), left(_left), right(_right), next(_next) {}
};

class Solution
{
  public:
    Node *connect(Node *root)
    {
        Node dummy;
        Node *cur = root;
        while (cur)
        {
            Node *nxt = &dummy;
            while (cur)
            {
                if (cur->left)
                {
                    nxt->next = cur->left;
                    nxt = nxt->next;
                }
                if (cur->right)
                {
                    nxt->next = cur->right;
                    nxt = nxt->next;
                }
                cur = cur->next;
            }
            cur = dummy.next;
            dummy.next = nullptr;
        }
        return root;
    }
};

/*
 * 跟116一样用链表就行
 */
