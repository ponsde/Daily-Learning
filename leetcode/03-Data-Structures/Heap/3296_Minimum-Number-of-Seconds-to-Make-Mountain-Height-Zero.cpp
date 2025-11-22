#include <vector>
#include <queue>
#include <tuple>
#include <algorithm>
#include <cmath>

using namespace std;

class Solution
{
public:
    long long minNumberOfSeconds(int mountainHeight, vector<int> &workerTimes)
    {
        priority_queue<tuple<long long, long long, long long>, vector<tuple<long long, long long, long long>>, greater<>> pq;
        for (auto i : workerTimes)
        {
            pq.push(make_tuple(i, i, i));
        }
        long long ans = 0;
        int l = workerTimes.size();
        while (mountainHeight > 0)
        {
            mountainHeight--;
            auto [a, b, c] = pq.top();
            pq.pop();
            ans = a;
            b += c;
            a += b;
            pq.push(make_tuple(a, b, c));
        }
        return ans;
    }
};

// 堆做法，之前做这题用的二分答案
// 通过三个数，一个工人用时，一个需要加的delta，和base数
// 然后找最低的工人用时，让他去干活

// 我再用二分答案做一下，正好回忆一下

class Solution
{
public:
    long long minNumberOfSeconds(int mountainHeight, vector<int> &workerTimes)
    {
        int l = workerTimes.size();
        auto check = [&](long long m)
        {
            long long sum = 0;
            for (int i = 0; i < l; ++i)
            {
                int t = workerTimes[i];
                long long x = 1LL * (int)(-1 + sqrt(1 + 8 * m / t)) / 2;
                sum += x;
                if (sum >= mountainHeight)
                {
                    return true;
                }
            }
            return false;
        };

        int ave = (mountainHeight - 1) / l + 1;
        long long left = 1;
        long long right = 1LL * *max_element(workerTimes.begin(), workerTimes.end()) * (1 + ave) * ave / 2 + 1;
        while (left < right)
        {
            long long m = left + (right - left) / 2;
            check(m) ? right = m : left = m + 1;
        }
        return left;
    }
};

// 还是有点忘了，但还是能做下
