#include <deque>
#include <string>

using namespace std;

class Solution
{
public:
    string finalString(string s)
    {
        deque<char> dq;
        int l = s.size();
        bool rev = false;
        for (int i = 0; i < l; ++i)
        {
            if (s[i] == 'i')
            {
                rev = !rev;
                continue;
            }
            if (rev == false)
            {
                dq.push_back(s[i]);
            }
            else
            {
                dq.push_front(s[i]);
            }
        }
        int ld = dq.size();
        string ans = "";
        if (rev == false)
        {
            for (auto c : dq)
            {
                ans += c;
            }
        }
        else
        {
            for (int i = ld - 1; i >= 0; --i)
            {
                ans += dq[i];
            }
        }
        return ans;
    }
};

// 简单的当知道可以用deque做，这样O(n)复杂度就行了
// 若是遇到i，改变插入的方向，等历遍结束，需要注意的是dq的长度不一定等于原数组长度
// 因此需要ld来记录deque的长度
// 然后根据rev的状态决定最后从前往后还是从后往前拼接字符串

// 如果没怎么想，我应该会用reverse两次来做，每次遇到i就reverse一次
