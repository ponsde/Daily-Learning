#include <vector>
#include <algorithm>
#include <queue>

using namespace std;

class Solution
{
public:
    vector<int> rearrangeBarcodes(vector<int> &barcodes)
    {
        int l = barcodes.size();
        int k = *max_element(barcodes.begin(), barcodes.end());
        priority_queue<pair<int, int>> pq;
        unordered_map<int, int> hash;
        for (int i = 0; i < l; ++i)
        {
            hash[barcodes[i]]++;
        }
        for (auto i = hash.begin(); i != hash.end(); ++i)
        {
            pq.push(make_pair(i->second, i->first));
        }
        vector<int> ans(l);
        int i = 0;
        while (!pq.empty())
        {
            auto t = pq.top();
            pq.pop();
            while (t.first != 0)
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

// 没啥变化，就是把26个字母换成了数字，按奇偶，数列大的先排这样就好
// 感觉用堆好一点，空间压力、访问感觉还好，不然用别的感觉很慢