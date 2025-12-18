#include <vector>
#include <unordered_map>

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
    int numComponents(ListNode *head, vector<int> &nums)
    {
        unordered_map<int, int> hash;
        for (auto x : nums)
        {
            hash[x]++;
        }
        int cnt = 0;
        int ans = 0;
        while (head != nullptr)
        {
            auto it = hash.find(head->val);
            if (it == hash.end())
            {
                ans += cnt > 0;
                cnt = 0;
            }
            else
            {
                cnt++;
            }
            head = head->next;
        }
        ans += cnt > 0;
        return ans;
    }
};

// 简单的历遍，但遇到未在的即可断开计数