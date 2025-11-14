#include <stack>
#include <unordered_map>
#include <string>
#include <cctype>

using namespace std;

class Solution
{
    void cal(stack<int> &nums, stack<char> &ops)
    {
        int a = nums.top();
        nums.pop();
        int b = nums.top();
        nums.pop();
        char op = ops.top();
        ops.pop();
        switch (op)
        {
        case '+':
            nums.push(a + b);
            break;
        case '-':
            nums.push(b - a);
        }
    }

    unordered_map<char, int> hash{
        {'+', 1},
        {'-', 1}};

public:
    int calculate(string s)
    {
        stack<int> nums;
        nums.push(0);
        stack<char> ops;
        int l = s.size();
        for (int i = 0; i < l; ++i)
        {
            if (s[i] == ' ')
            {
                continue;
            }
            if (s[i] == '(')
            {
                ops.push(s[i]);
                while (i + 1 < l && s[i + 1] == ' ')
                {
                    ++i;
                }
                if (s[i + 1] == '-')
                {
                    nums.push(0);
                }
                continue;
            }
            if (s[i] == ')')
            {
                while (ops.top() != '(')
                {
                    cal(nums, ops);
                }
                ops.pop();
                continue;
            }
            if (isdigit(s[i]))
            {
                int left = i;
                while (i + 1 < l && isdigit(s[i + 1]))
                {
                    ++i;
                }
                nums.push(stoi(s.substr(left, i - left + 1)));
                continue;
            }
            while (!ops.empty() && ops.top() != '(' && hash[ops.top()] >= hash[s[i]])
            {
                cal(nums, ops);
            }
            ops.push(s[i]);
        }
        while (!ops.empty())
        {
            cal(nums, ops);
        }
        return nums.top();
    }
};

// 需要注意开头为负数
// 注意查找'(' 右第一个非空字符，若为'-' 要想nums栈压入0，方便计算
// 尾部按序计算，直接算最终结果 '-' 会导致结果错误
