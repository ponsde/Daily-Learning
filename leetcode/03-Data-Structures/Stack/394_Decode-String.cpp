#include <string>
#include <stack>
#include <algorithm>
#include <cctype>

using namespace std;

class Solution {
public:
    string decodeString(string s) {
        stack<string> ss;
        stack<int> cnt;
        string ans;
        int l = s.size();
        for (int i = 0; i < l; ++i)
        {
            if (isdigit(s[i]))
            {
                int left = i;
                while (isdigit(s[i + 1]))
                {
                    ++i;
                }
                ss.push(ans);
                cnt.push(stoi(s.substr(left, i - left + 1))); //裁剪字符串
                ans.clear();
                i++;
                continue;
            }
            if (s[i] == ']')
            {
                int t = cnt.top();
                string st = ans;
                cnt.pop();
                for(int j = 0; j < t - 1; ++j) //ans本身算一次
                {
                    ans += st;
                }
                string before = ss.top();
                ss.pop();
                ans = before + ans;
                continue;
            }
            ans += s[i];
        }
        return ans;
    }
};


//遇到数字时，找出数字是几位数字，然后裁剪字符串
// 遇到'['，入栈，清空字符串
// 遇到']'，出栈，加入到前字符串的后端，重复该过程

