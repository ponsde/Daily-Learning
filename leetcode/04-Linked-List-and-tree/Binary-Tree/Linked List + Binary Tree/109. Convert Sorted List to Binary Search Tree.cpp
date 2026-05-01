#include <bits/stdc++.h>

using namespace std;

struct ListNode
{
    int val;
    ListNode *next;
    ListNode() : val(0), next(nullptr) {}
    ListNode(int x) : val(x), next(nullptr) {}
    ListNode(int x, ListNode *next) : val(x), next(next) {}
};

struct TreeNode
{
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};

class Solution
{

  public:
    TreeNode *sortedListToBST(ListNode *head)
    {
        auto dfs = [&](auto &&self, ListNode *head) -> TreeNode *
        {
            if (!head)
                return nullptr;
            if (!head->next)
                return new TreeNode(head->val);
            ListNode *prev = nullptr;
            ListNode *slow = head;
            ListNode *fast = head;
            while (fast && fast->next)
            {
                prev = slow;
                slow = slow->next;
                fast = fast->next->next;
            }
            prev->next = nullptr;
            return new TreeNode(slow->val, self(self, head), self(self, slow->next));
        };
        return dfs(dfs, head);
    }
};

/*
 * 要把有序的链表转化为二叉搜索树，就按照分治来弄
 * 通过快慢指针分割，然后左子树和右子树依次这样即可
 */
