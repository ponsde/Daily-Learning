#include <queue>
#include <string>
#include <vector>

using namespace std;

class Solution
{
public:
    string longestDiverseString(int a, int b, int c)
    {
        int l = a + b + c;
        priority_queue<pair<int, char>> pq;
        pq.push(make_pair(a, 'a'));
        pq.push(make_pair(b, 'b'));
        pq.push(make_pair(c, 'c'));
        string ans = "";
        vector<int> cnt(3);
        while (pq.top().first > 0)
        {
            auto t = pq.top();
            pq.pop();
            if (cnt[t.second - 'a'] == 2 && ans.back() == t.second)
            {
                auto t2 = pq.top();
                pq.pop();
                if (t2.first == 0)
                {
                    break;
                }
                ans += t2.second;
                t2.first--;
                cnt[0] = cnt[1] = cnt[2] = 0;
                cnt[t2.second - 'a']++;
                pq.push(t2);
                pq.push(t);
                continue;
            }
            if (!ans.empty() && ans.back() != t.second)
            {
                cnt[0] = cnt[1] = cnt[2] = 0;
            }
            ans += t.second;
            t.first--;
            cnt[t.second - 'a']++;
            pq.push(t);
        }
        return ans;
    }
};

// 还是用堆储存，但这次有三个字母，其他没啥区别，还是先放最大的字母，
// 若是达到两个，然后下一个加入的也会是该字母，换下一个最大的字母加入

// 新知道了个cnt[0] = cnt[1] = cnt[2] = 0