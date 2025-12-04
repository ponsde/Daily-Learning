#include <deque>
#include <vector>

using namespace std;

class Solution
{
public:
    vector<int> maxSlidingWindow(vector<int> &nums, int k)
    {
        int l = nums.size();
        vector<int> ans(l - k + 1);
        deque<int> dq;
        for (int i = 0; i < l; ++i)
        {
            while (!dq.empty() && nums[i] >= nums[dq.back()])
            {
                dq.pop_back();
            }

            dq.push_back(i);

            int left = i - k + 1;

            if (left < 0)
            {
                continue;
            }

            if (dq.front() < left)
            {
                dq.pop_front();
            }

            ans[left] = nums[dq.front()];
        }
        return ans;
    }
};

// 单调队列的应用