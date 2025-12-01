#include <queue>

using namespace std;

class RecentCounter
{
    queue<int> q;
    int cnt = 0;

public:
    RecentCounter()
    {
    }

    int ping(int t)
    {
        q.push(t);
        cnt++;
        while (q.front() < t - 3000)
        {
            cnt--;
            q.pop();
        }
        return cnt;
    }
};

// 简单的队列加入就好了