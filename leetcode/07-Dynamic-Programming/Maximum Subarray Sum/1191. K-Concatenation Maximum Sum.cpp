#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int kConcatenationMaxSum(vector<int> &arr, int k)
    {
        int cnt = 0;
        int l = arr.size();
        long long ans = 0;
        int MOD = 1000000007;
        long long f0 = 0;
        long long total = 0;
        for (auto x : arr)
        {
            total += x;
        }
        int limit = k == 1 ? 1 : 2;
        for (int i = 0; i < l;)
        {
            if (cnt == limit)
            {

                break;
            }
            long long new_f = max(f0, 1LL * 0) + arr[i];
            ans = max(ans, new_f);
            f0 = new_f;
            ++i;
            if (i == l)
            {
                i = 0;
                cnt++;
            }
        }
        if (total > 0 && k > 2)
        {
            ans += total * (k - 2);
        }
        return ans % MOD;
    }
};

/*
    最开始内存过大，换了混动数组后变成超时，因此用数学的做法
    如果k大于等于2，那就历遍两次
    如果总和小于0，就说明直接返回ans就好了，ans里就是最好的答案
    如果总和大于0，那就说明中间的k-2次都要加上总和
    要注意思考前缀和后缀，要考虑最优的前缀和后缀，这里面的ans已经包括了
    我们要做的就是把中间的部分加上去
*/