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
        vector<Node *> pre;

        auto dfs = [&](auto &&self, Node *node, int ly)
        {
            if (!node)
                return;
            if (ly == pre.size())
                pre.push_back(nullptr);
            if (pre[ly] != nullptr)
            {
                pre[ly]->next = node;
            }
            pre[ly] = node;
            self(self, node->left, ly + 1);
            self(self, node->right, ly + 1);
        };
        dfs(dfs, root, 0);
        return root;
    }
};

/*
 * dfs做法
 * 原来树的高度也算常数项
 * 前序历遍，用pre数组从左开始记录，这样后面遇到同一层且pre不为空
 * 就说明该pre为其前一个node
 */

/*
// Definition for a Node.
class Node {
public:
    int val;
    Node* left;
    Node* right;
    Node* next;

    Node() : val(0), left(NULL), right(NULL), next(NULL) {}

    Node(int _val) : val(_val), left(NULL), right(NULL), next(NULL) {}

    Node(int _val, Node* _left, Node* _right, Node* _next)
        : val(_val), left(_left), right(_right), next(_next) {}
};
*/

class Solution
{
  public:
    Node *connect(Node *root)
    {
        Node dummy;
        Node *cur = root;
        while (cur)
        {
            dummy.next = nullptr;
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
        }
        return root;
    }
};

/*
 * 链表做法，每次历遍上一级是顺便把下一级连起来，这样只需要一此次历遍即可
 */
