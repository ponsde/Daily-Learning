#include <bits/stdc++.h>

using namespace std;

class Solution
{
  public:
    int maxRotateFunction(vector<int> &nums)
    {
        int l = nums.size();
        vector<int> suf(l + 1);
        vector<int> pre(l + 1);
        for (int i = l - 1; i >= 0; --i)
        {
            suf[i] = suf[i + 1] + nums[i];
        }
        for (int i = 0; i < l; ++i)
        {
            pre[i + 1] = pre[i] + nums[i];
        }
        int ans = INT_MIN;
        int sum = 0;
        for (int i = 0; i < l; ++i)
        {
            sum += nums[i] * i;
        }
        ans = max(ans, sum);
        for (int i = 1; i < l; ++i)
        {
            sum -= pre[i] + suf[i];
            sum += l * nums[i - 1];
            ans = max(ans, sum);
        }
        return ans;
    }
};

/*
 * 哇嘎嘎嘎，自己做出来了，做开始有点懵，但慢慢感觉出来了
 * 数据范围是10^5，所以进来做到On，然后看，因为是顺时针的绕圈
 * 所以第i个位置时，后l - i就是按正常的顺序，然后前i - 1就是接到l后面的
 * 此时就能第一遍先0~l历遍，然后开始每移动一位，该位作为新的0起始点
 * 右边即前面的系数-1，然后新增的末尾位加上去
 * 因为pre[i]多减了，因此就l * nums[i - 1]就行
 */

class Solution2
{
  public:
    int maxRotateFunction(vector<int> &nums)
    {
        int l = nums.size();
        int ans = INT_MIN;
        int sum = 0;
        int f = 0;
        for (int i = 0; i < l; ++i)
        {
            sum += nums[i];
            f += i * nums[i];
        }
        ans = max(ans, f);
        int new_f;

        for (int i = 1; i < l; ++i)
        {
            new_f = f + sum - l * nums[l - i];
            ans = max(ans, new_f);
            f = new_f;
        }
        return ans;
    }
};

/*
 * 灵神的做法弄了个递推公式
 * f[i] = f[i - 1] + S - l * nums[l - i]
 */
