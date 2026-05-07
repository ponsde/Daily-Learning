#include <bits/stdc++.h>

using namespace std;

class Solution
{
  public:
    bool rotateString(string s, string goal)
    {
        int l = s.size();
        for (int i = 0; i < l; ++i)
        {
            string t = s.substr(i, l - i) + s.substr(0, i);
            if (t == goal)
                return true;
        }
        return false;
    }
};

/*
 * 数据量不大我就这样做了
 */

class Solution2
{
  public:
    bool rotateString(string s, string goal)
    {
        return s.size() == goal.size() && (s + s).contains(goal);
    }
};

/*
 * 我去，因为旋转类似是后缀加前缀，因此两个s拼起来看是否包含即可
 */

class Solution3
{
  public:
    bool rotateString(string s, string goal)
    {
        if (s.size() != goal.size())
            return false;
        int l = goal.size();
        vector<int> pi(l);
        int cnt = 0;
        for (int i = 1; i < l; ++i)
        {
            char b = goal[i];
            while (cnt && goal[cnt] != b)
            {
                cnt = pi[cnt - 1];
            }
            if (goal[cnt] == b)
            {
                cnt++;
            }
            pi[i] = cnt;
        }
        s = s + s;
        int ls = s.size();
        cnt = 0;
        vector<int> pos;
        for (int i = 0; i < ls; ++i)
        {
            char b = s[i];
            while (cnt && goal[cnt] != b)
            {
                cnt = pi[cnt - 1];
            }
            if (goal[cnt] == b)
            {
                cnt++;
            }
            if (cnt == l)
            {
                pos.push_back(i - l + 1);
                cnt = pi[cnt - 1];
            }
        }
        return !pos.empty();
    }
};

/*
 * kmp算法...好难会啊...
 * 若是重复的选择会大幅的增加时间复杂度
 * 而前面匹配过的就可以找重叠
 * 对于goal，我们在第 i 个位置，pi i 对于0~i最长的前缀与后缀重叠长度
 * 先计算goal每一个位置前缀和后缀重叠部分
 * cnt的位置为前缀的尾巴在的地方，而i就是后缀尾巴在的地方，二者一一比对，如果不同
 * 就在cnt前缀中找前缀中与后缀中重叠最大的然后再比对看看是否满足
 */
