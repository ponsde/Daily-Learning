#include <queue>
#include <vector>

using namespace std;

class Solution
{
public:
    int halveArray(vector<int> &nums)
    {
        double sum = 0;
        int l = nums.size();
        priority_queue<double> pq;
        for (auto i : nums)
        {
            sum += i;
            pq.push(i);
        }
        int cnt = 0;
        double std = sum / 2;
        while (sum > std)
        {
            double a = pq.top();
            pq.pop();
            double b = a / 2;
            sum -= b;
            pq.push(b);
            cnt++;
        }
        return cnt;
    }
};

// 算简单的吧