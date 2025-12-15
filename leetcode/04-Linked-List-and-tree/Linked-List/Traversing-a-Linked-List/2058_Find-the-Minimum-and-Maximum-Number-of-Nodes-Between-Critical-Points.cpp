#include <vector>
#include <climits>

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
    vector<int> nodesBetweenCriticalPoints(ListNode *head)
    {
        vector<int> ans(2, -1);
        int length = 0;
        vector<int> vec;
        while (head != nullptr)
        {
            vec.push_back(head->val);
            head = head->next;
        }
        int l = vec.size();
        vector<int> t;
        for (int i = 0; i < l; ++i)
        {
            int left = i - 1;
            int right = i + 1;
            if (left >= 0 && right < l && ((vec[i] > vec[left] && vec[i] > vec[right]) || (vec[i] < vec[left] && vec[i] < vec[right])))
            {
                t.push_back(i);
            }
        }
        int lt = t.size();
        if (lt < 2)
        {
            return ans;
        }
        int mn = INT_MAX;
        for (int i = 0; i < lt - 1; ++i)
        {
            mn = min(mn, t[i + 1] - t[i]);
        }
        ans[0] = mn;
        ans[1] = t.back() - t.front();
        return ans;
    }
};

// 没怎么想，就直接按第一感觉写了