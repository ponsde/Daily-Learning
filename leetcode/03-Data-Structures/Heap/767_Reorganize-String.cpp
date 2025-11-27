#include <string>
#include <vector>
#include <queue>
#include <algorithm>

using namespace std;

class Solution
{
public:
    string reorganizeString(string s)
    {
        priority_queue<pair<int, char>> pq;
        int l = s.size();
        vector<int> vec(26);
        int sum = 0;
        for (auto i : s)
        {
            vec[i - 'a']++;
        }
        int mx = *max_element(vec.begin(), vec.end());
        if (mx > l - mx + 1)
        {
            return "";
        }
        for (int i = 0; i < 26; ++i)
        {
            if (vec[i] == 0)
            {
                continue;
            }
            pq.push(make_pair(vec[i], i + 'a'));
        }
        string ans = "";
        while (!pq.empty())
        {
            auto t = pq.top();
            pq.pop();
            vector<pair<int, char>> temp;
            if (t.first == 0)
            {
                break;
            }
            if (!ans.empty() && t.second == ans.back())
            {
                temp.push_back(t);
                t = pq.top();
                pq.pop();
                ans += t.second;
                t.first--;
                pq.push(t);
                pq.push(temp.back());
                continue;
            }
            ans += t.second;
            t.first--;
            pq.push(t);
        }
        return ans;
    }
};

// https://zhuanlan.zhihu.com/p/1945782212176909162

// 最重要知道的是只有 m <= n - m + 1 才能进行
// 然后用大根堆，先放大的再放小的
// 大到小排就好，若是ans.back() = 堆顶的元素时，取下一个放进去就好了

// 先贴上我的方法，明天补上更好的

class Solution
{
public:
    string reorganizeString(string s)
    {
        vector<int> vec(26);
        int l = s.size();
        for (int i = 0; i < l; ++i)
        {
            vec[s[i] - 'a']++;
        }
        int mx = *max_element(vec.begin(), vec.end());
        if (mx > l - mx + 1)
        {
            return "";
        }
        priority_queue<pair<int, char>> pq;
        for (int i = 0; i < 26; ++i)
        {
            if (vec[i] == 0)
            {
                continue;
            }
            pq.push(make_pair(vec[i], i + 'a'));
        }
        int i = 0;
        string ans(l, 0);
        while (!pq.empty())
        {
            auto t = pq.top();
            pq.pop();
            while (t.first > 0)
            {
                ans[i] = t.second;
                t.first--;
                i += 2;
                if (i >= l)
                {
                    i = 1;
                }
            }
        }
        return ans;
    }
};

// 先排偶数，再排计数，虽然感觉这个还是有点怪怪的吧，感觉不用堆也行