#include <vector>
#include <queue>

using namespace std;

class Solution
{
public:
    int maximumProduct(vector<int> &nums, int k)
    {
        int MOD = 1000000007;
        priority_queue<int, vector<int>, greater<>> pq;
        for (auto i : nums)
        {
            pq.push(i);
        }
        for (int i = 0; i < k; ++i)
        {
            int a = pq.top();
            pq.pop();
            pq.push(a + 1);
        }
        long long ans = 1;
        while (!pq.empty())
        {
            ans *= pq.top();
            ans %= MOD;
            pq.pop();
        }
        return ans;
    }
};

// 需要注意的是ans会超过long long的大小
// 因此对每次的ans % MOD， 和对最后的 % MOD 相同