#include <map>
#include <stack>
#include <string>
#include <cctype>
#include <algorithm>
#include <cctype>

using namespace std;

class Solution
{
public:
    string countOfAtoms(string formula)
    {
        map<string, int> mp;
        stack<int> st;
        string ans;
        string d = "";
        int v = 1;
        int l = formula.size();
        for (int i = l - 1; i >= 0; --i)
        {
            if (isdigit(formula[i]))
            {
                d = formula[i] + d; // 计数
                continue;
            }
            if (formula[i] == ')')
            {
                int temp = d.empty() ? 1 : stoi(d);
                st.push(temp); // 压入每块区域的数值
                v *= temp;     // 调整倍率
                d.clear();
                continue;
            }
            if (formula[i] == '(')
            {
                v = v / st.top(); // 回调
                st.pop();
                continue;
            }
            if (isupper(formula[i])) // 原子的结尾
            {
                ans += formula[i];
                reverse(ans.begin(), ans.end());
                mp[ans] += (d.empty() ? 1 : stoi(d)) * v;
                ans.clear();
                d.clear();
                continue;
            }
            ans += formula[i];
        }
        ans.clear();
        for (auto &[a, b] : mp)
        {
            ans += a;
            if (b == 1)
            {
                continue;
            }
            ans += to_string(b);
        }
        return ans;
    }
};

// 最关键的是要从右往左历遍，这样思维量更少，更不容易写错
// d的作用是统计某个原子的个数，因此每次离开原子时应该清空
// 通过map进行储存，最后结果按序历遍即可
// 若d为空，则代表该原子数为1
// v作为倍率，往map中储存数