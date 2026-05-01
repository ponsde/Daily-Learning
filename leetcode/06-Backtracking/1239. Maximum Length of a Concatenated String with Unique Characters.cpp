#include <bits/stdc++.h>

using namespace std;

class Solution
{
  public:
    int maxLength(vector<string> &arr)
    {
        string cur;
        vector<int> vec(26);
        for (auto &x : arr)
        {
            vector<int> t(26);
            for (auto &y : x)
            {
                t[y - 'a']++;
                if (t[y - 'a'] > 1)
                {
                    x = "";
                    break;
                }
            }
        }
        int l = arr.size();
        int ans = 0;
        auto help = [&](auto &&self, int i)
        {
            ans = max(ans, (int)cur.size());
            if (i == l)
            {
                return;
            }
            int la = arr[i].size();
            bool is_can = true;
            for (auto t : arr[i])
            {
                if (vec[t - 'a'] > 0)
                {
                    is_can = false;
                    break;
                }
            }

            if (is_can)
            {
                cur += arr[i];
                for (auto x : arr[i])
                {
                    vec[x - 'a']++;
                }
                self(self, i + 1);
                cur = cur.substr(0, cur.size() - la);
                for (auto x : arr[i])
                {
                    vec[x - 'a']--;
                }
            }

            self(self, i + 1);
        };
        help(help, 0);
        return ans;
    }
};

/*
 * 要求选择序列字母不相同然后长度最长
 * 那么先历遍看字符串是否有相同字母，如有则将其置为""排除干扰
 *
 * 可以进行优化，string实际上并不需要，可以把cur去掉换成len来记录长度即可
 *
 * 除此之外还能将26位的数组去掉，因为每一个字母只要一个，用bit位来更好
 */

// 优化后的答案

class Solution2
{
  public:
    int maxLength(vector<string> &arr)
    {
        int des = 0;
        int len = 0;

        for (auto &x : arr)
        {
            int t = 0;
            for (auto &y : x)
            {
                int mask = 1 << (y - 'a');

                if (t & mask)
                {
                    x = "";
                    break;
                }
                t |= mask;
            }
        }
        int l = arr.size();
        int ans = 0;
        auto help = [&](auto &&self, int i)
        {
            ans = max(ans, len);
            if (i == l)
            {
                return;
            }

            bool is_can = true;
            for (auto t : arr[i])
            {
                int mask = 1 << (t - 'a');
                if (des & mask)
                {
                    is_can = false;
                    break;
                }
            }

            if (is_can)
            {
                int la = arr[i].size();
                len += la;
                for (auto x : arr[i])
                {
                    des |= 1 << (x - 'a');
                }
                self(self, i + 1);

                for (auto x : arr[i])
                {
                    des &= ~(1 << (x - 'a'));
                }
                len -= la;
            }

            self(self, i + 1);
        };
        help(help, 0);
        return ans;
    }
};
