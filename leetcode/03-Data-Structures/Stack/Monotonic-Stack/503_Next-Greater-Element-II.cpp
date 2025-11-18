#include <vector>
#include <stack>

using namespace std;

class Solution
{
public:
    vector<int> nextGreaterElements(vector<int> &nums)
    {
        int l = nums.size();
        vector<int> ans(l, -1);
        stack<int> st;
        int lt = 2 * l;
        for (int i = 0; i < lt; ++i)
        {
            int m = nums[i % l];
            while (!st.empty() && m > nums[st.top()])
            {
                ans[st.top()] = m;
                st.pop();
            }
            if (i >= l)
            {
                if (st.empty())
                {
                    break;
                }
                continue;
            }
            st.push(i);
        }
        return ans;
    }
};

// 循环的数组，当i = l时，% l 从头再历遍