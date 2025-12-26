#include <stack>
#include <vector>
#include <utility>

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
    vector<int> nextLargerNodes(ListNode *head)
    {
        stack<pair<int, int>> st;
        int l = 0;
        auto t = head;
        while (t)
        {
            l++;
            t = t->next;
        }
        int idx = 0;
        vector<int> ans(l);
        while (head)
        {
            while (!st.empty() && head->val > st.top().first)
            {
                ans[st.top().second] = head->val;
                st.pop();
            }
            st.push(make_pair(head->val, idx));
            head = head->next;
            idx++;
        }
        return ans;
    }
};

// 单调栈，先历遍一次得到l，栈里储存val和idx，遇到更大的就弹出栈顶并更新答案
