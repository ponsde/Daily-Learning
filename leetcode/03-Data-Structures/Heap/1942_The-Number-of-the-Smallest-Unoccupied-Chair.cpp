#include <vector>
#include <queue>
#include <algorithm>

using namespace std;

class Solution
{
public:
    int smallestChair(vector<vector<int>> &times, int targetFriend)
    {
        priority_queue<int, vector<int>, greater<>> pq;
        priority_queue<int, vector<int>, greater<>> lea;
        int l = times.size();
        unordered_map<int, vector<int>> hash;
        vector<int> tt = times[targetFriend];
        sort(times.begin(), times.end());
        int cnt = 0;
        int ans;
        for (int i = 0; i < l; ++i)
        {
            int come = times[i][0];
            int go = times[i][1];
            while (!lea.empty() && lea.top() <= come)
            {
                vector<int> &temp = hash[lea.top()];
                for (auto seat : temp)
                {
                    pq.push(seat);
                }
                hash.erase(lea.top());
                lea.pop();
            }
            if (!pq.empty())
            {
                if (come == tt[0])
                {
                    ans = pq.top();
                    break;
                }
                hash[go].push_back(pq.top());
                pq.pop();
            }
            else
            {
                if (come == tt[0])
                {
                    ans = cnt;
                    break;
                }
                hash[go].push_back(cnt);
                cnt++;
            }
            lea.push(go);
        }
        return ans;
    }
};

// 刚看了没多久就感觉自己做不出来，但让自己去写写看就对了，之后别怕，自己可以的
// 通过两个优先队列，一个储存离开人的椅子，一个储存离开人的时间
// 因为每个人到达时间都不一样, 因此提前找到目标人物的到达时间， 然后sort，当在循环中遇到目标人物时记录位置然后返回位置
// 当新到达人的时间大于前人离开的时间时，将前人做的椅子压入堆中