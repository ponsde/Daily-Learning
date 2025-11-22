#include <queue>

using namespace std;

class SeatManager
{
    int cnt;
    priority_queue<int, vector<int>, greater<>> pq;

public:
    SeatManager(int n)
    {
        cnt = 1;
    }

    int reserve()
    {
        int ans;
        if (!pq.empty())
        {
            ans = pq.top();
            pq.pop();
        }
        else
        {
            ans = cnt;
            cnt++;
        }
        return ans;
    }

    void unreserve(int seatNumber)
    {
        if (seatNumber < cnt)
        {
            pq.push(seatNumber);
        }
    }
};

// 简单题