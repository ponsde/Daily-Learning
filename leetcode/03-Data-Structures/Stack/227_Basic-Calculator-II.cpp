#include <stack>
#include <string>
#include <unordered_map>
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
            break;
        case '*':
            nums.push(a * b);
            break;
        case '/':
            nums.push(b / a);
            break;
        }
    }

    unordered_map<char, int> hash{
        {'+', 1},
        {'-', 1},
        {'*', 2},
        {'/', 2}};

public:
    int calculate(string s)
    {
        stack<int> nums;
        nums.push(0); // 防止开头为负数
        stack<char> ops;
        int l = s.size();
        for (int i = 0; i < l; ++i)
        {
            if (s[i] == ' ')
            {
                continue;
            }
            if (isdigit(s[i]))
            {
                int left = i;
                while (i + 1 < l && isdigit(s[i + 1])) // 找出数的位数大小
                {
                    ++i;
                }
                nums.push(stoi(s.substr(left, i - left + 1)));
                continue;
            }
            while (!ops.empty() && hash[ops.top()] >= hash[s[i]]) // 按序计算，注意是while而不是if
            {
                cal(nums, ops);
            }
            ops.push(s[i]);
        }
        while (!ops.empty())
        {
            cal(nums, ops); // 求最后答案
        }
        return nums.top();
    }
};

// 与基本计算器差不多，但值得注意的是需要时按序计算时需要的是while而不是if
// 如果是if，假设为 1 - 8 * 8 - 8 * 8 - 8 * 8
// 离开for循环进入最后的计算结果时，会导致负号间的互殴导致出错