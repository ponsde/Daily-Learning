#include <vector>
#include <stack>

using namespace std;

struct ListNode
{
    int val;
    ListNode *next;
};
class Solution
{
public:
    vector<int> nextLargerNodes(ListNode *head)
    {
        vector<int> ans;
        stack<pair<int, int>> st;
        int idx = -1;
        while (1)
        {
            idx++;            // 每个数索引
            ans.push_back(0); // 因为不知道具体的n， 随历遍延展
            int v = head->val;
            while (!st.empty() && v > st.top().first) // 单调栈中单调递减
            {
                ans[st.top().second] = v; // 当进入while时，说明栈顶遇到了最近的较大值, 存入ans；
                st.pop();
            }
            st.push(make_pair(v, idx));
            if (head->next == nullptr) // 历遍到末尾
            {
                break;
            }
            head = head->next;
        }
        return ans;
    }
};
// while 循环版
// 还是比较好想
// 不用NULL用nullptr

class Solution
{
public:
    vector<int> nextLargerNodes(ListNode *head)
    {
        vector<int> ans;
        stack<pair<int, int>> st;
        int idx = -1;
        for (ListNode *p = head; p != nullptr; p = p->next)
        {
            idx++;
            ans.push_back(0);
            int v = p->val;
            while (!st.empty() && v > st.top().first)
            {
                ans[st.top().second] = v;
                st.pop();
            }
            st.push(make_pair(v, idx));
        }
        return ans;
    }
};

// for循环版