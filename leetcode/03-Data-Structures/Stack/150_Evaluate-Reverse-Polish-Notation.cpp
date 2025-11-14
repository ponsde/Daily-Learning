#include <stack>
#include <string>
#include <vector>
using namespace std;

class Solution
{
private:
    void cal(stack<int> &nums, stack<char> &ops)
    {
        char op = ops.top();
        ops.pop();
        int a = nums.top();
        nums.pop();
        int b = nums.top();
        nums.pop();
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

public:
    int evalRPN(vector<string> &tokens)
    {
        stack<int> nums;
        stack<char> ops;
        int l = tokens.size();
        for (int i = 0; i < l; ++i)
        {
            int k = tokens[i][0];
            if (tokens[i].size() != 1 || isdigit(k))
            {
                nums.push(stoi(tokens[i]));
                continue;
            }
            ops.push(k);
            cal(nums, ops);
        }
        return nums.top();
    }
};

// 需要主要当token里的数是负数时，k为 '-'，需判断token.size()是否大于1，若大于必然为负数