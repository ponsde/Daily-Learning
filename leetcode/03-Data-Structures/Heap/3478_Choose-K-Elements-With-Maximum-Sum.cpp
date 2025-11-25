#include <vector>
#include <tuple>
#include <algorithm>
#include <queue>

using namespace std;

class Solution
{
public:
    vector<long long> findMaxSum(vector<int> &nums1, vector<int> &nums2, int k)
    {
        vector<tuple<int, int, int>> vec;
        int l = nums1.size();
        for (int i = 0; i < l; ++i)
        {
            vec.push_back(make_tuple(nums1[i], nums2[i], i));
        }
        sort(vec.begin(), vec.end());
        long long sum = 0;
        vector<long long> ans(l);
        priority_queue<int, vector<int>, greater<>> pq;
        for (int i = 0; i < l;)
        {
            int left = i;
            int x = get<0>(vec[left]);
            while (i < l && get<0>(vec[i]) == x)
            {
                ans[get<2>(vec[i])] = sum;
                ++i;
            }
            for (int j = left; j < i; ++j)
            {
                int m = get<1>(vec[j]);
                pq.push(m);
                sum += m;
                if (pq.size() > k)
                {
                    sum -= pq.top();
                    pq.pop();
                }
            }
        }
        return ans;
    }
};

// 通过tuple储存三个元素，nums1的值，nums2的值和索引
// nums1的值用来排序，nums2的值方便后续，防止多次访问nums2数组，索引用来修改ans
// 先根据nums1排序，这样值从小到大排，然后历遍，通过小根堆存储
// 因为历遍数组时，后面的value大于前面的value，位于后面之前所有数对应的索引都应该被访问
// 因为堆并不在循环里面，因此无需每次从头历遍数组
// 然后维护和