#include <vector>
#include <queue>

using namespace std;

class Solution
{
public:
    int minOperations(vector<int> &nums, int k)
    {
        priority_queue<long long, vector<long long>, greater<>> pq(nums.begin(), nums.end());
        int cnt = 0;
        if (nums.size() < 2)
        {
            return 0;
        }
        while (pq.top() < k)
        {
            long long x = pq.top();
            pq.pop();
            long long y = pq.top();
            pq.pop();
            long long m = x * 2 + y;
            pq.push(m);
            cnt++;
        }
        return cnt;
    }
};

// 简单的找最小

// 可以优化将大于等于k的数不放入pq

class Solution
{
public:
    int minOperations(vector<int> &nums, int k)
    {
        priority_queue<long long, vector<long long>, greater<>> pq;
        for (auto i : nums)
        {
            if (i < k)
            {
                pq.push(1LL * i);
            }
        }
        int cnt = 0;
        while (pq.size() >= 2)
        {
            long long x = pq.top();
            pq.pop();
            long long y = pq.top();
            pq.pop();
            long long m = x * 2 + y;
            cnt++;
            if (m >= k)
            {
                continue;
            }
            pq.push(m);
        }
        return cnt + pq.size();
    }
};