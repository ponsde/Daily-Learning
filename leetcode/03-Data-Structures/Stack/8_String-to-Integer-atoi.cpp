#include <string>
#include <cctype>
#include <climits>

using namespace std;

class Solution
{
public:
    int myAtoi(string s)
    {
        int l = s.size();
        int ans = 0;
        for (int i = 0; i < l; ++i)
        {
            if (s[i] == '-' || s[i] == '+')
            {
                if (s[i + 1] == ' ' || isalpha(s[i + 1]))
                {
                    return 0;
                }
                for (int j = i + 1; j < l; ++j)
                {
                    if (ans == 0 && s[j] == '0')
                    {
                        continue;
                    }
                    if (!isdigit(s[j]))
                    {
                        break;
                    }
                    if (1LL * ans * 10 > INT_MAX)
                    {
                        if (s[i] == '-')
                        {
                            return INT_MIN;
                        }
                        return INT_MAX;
                    }
                    ans *= 10;
                    if (1LL * ans + (s[j] - '0') > INT_MAX)
                    {
                        if (s[i] == '-')
                        {
                            return INT_MIN;
                        }
                        return INT_MAX;
                    }
                    ans += s[j] - '0';
                }
                if (s[i] == '-')
                {
                    return -ans;
                }
                return ans;
            }
            if (s[i] == ' ')
            {
                continue;
            }
            if (isdigit(s[i]))
            {
                for (int j = i; j < l; ++j)
                {
                    if (ans == 0 && s[j] == '0')
                    {
                        continue;
                    }
                    if (!isdigit(s[j]))
                    {
                        break;
                    }
                    if (1LL * ans * 10 > INT_MAX)
                    {
                        return INT_MAX;
                    }
                    ans *= 10;
                    if (1LL * ans + (s[j] - '0') > INT_MAX)
                    {
                        if (s[i] == '-')
                        {
                            return INT_MIN;
                        }
                        return INT_MAX;
                    }
                    ans += s[j] - '0';
                }
                return ans;
            }
            if (!isdigit(s[i]))
            {
                return 0;
            }
        }
        return ans;
    }
};

// 做一个属于自己的stoi
// 考虑第一个遇到的的字符为什么字符
// 若为alpha，则返回0
// 若为+/-, 则从第二位开始往后历遍，遇到数字开头的'0'跳过，直至遇到第一个非数字截至， 然后返回 +/- sum
// 若为' ', 跳过
// 若为数字，则从第二位开始往后历遍，遇到数字开头的'0'跳过，直至遇到第一个非数字截至， 然后返回sum