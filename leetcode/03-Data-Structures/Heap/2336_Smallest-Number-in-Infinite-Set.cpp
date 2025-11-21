#include <queue>
#include <unordered_map>

using namespace std;

class SmallestInfiniteSet
{
    int cur = 1;
    priority_queue<int, vector<int>, greater<>> pq;
    unordered_map<int, int> hash;

public:
    SmallestInfiniteSet()
    {
    }

    int popSmallest()
    {
        int ans;
        if (!pq.empty())
        {
            ans = pq.top();
            hash.erase(pq.top());
            pq.pop();
        }
        else
        {
            ans = cur;
            cur++;
        }
        return ans;
    }

    void addBack(int num)
    {
        if (num < cur && !hash.count(num))
        {
            pq.push(num);
            hash[num]++;
        }
    }
};

// cur作为基准数
// pq储存加入的数
// hash储存哪些加入的数，防止重复加入