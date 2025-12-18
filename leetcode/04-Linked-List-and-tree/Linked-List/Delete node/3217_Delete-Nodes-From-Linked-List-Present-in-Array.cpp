#include <unordered_set>
#include <vector>

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
    ListNode *modifiedList(vector<int> &nums, ListNode *head)
    {
        unordered_set<int> st(nums.begin(), nums.end());
        ListNode dummy(0, head);
        auto cur = &dummy;
        while (cur != nullptr)
        {
            while (cur->next != nullptr && st.count(cur->next->val))
            {
                cur->next = cur->next->next;
            }
            cur = cur->next;
        }
        return dummy.next;
    }
};

// 先存入hash表，再历遍，遇到删除的则跳过