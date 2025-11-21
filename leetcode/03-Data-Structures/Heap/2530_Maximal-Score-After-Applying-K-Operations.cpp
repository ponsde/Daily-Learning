#include <queue>
#include <vector>

using namespace std;

class Solution
{
public:
    long long maxKelements(vector<int> &nums, int k)
    {
        priority_queue<int> pq(nums.begin(), nums.end());
        long long sum = 0;
        for (int i = 0; i < k; ++i)
        {
            int m = pq.top();
            pq.pop();
            sum += m;
            pq.push((m - 1) / 3 + 1);
        }
        return sum;
    }
};

// 就是一直找nums数列的最大值而已