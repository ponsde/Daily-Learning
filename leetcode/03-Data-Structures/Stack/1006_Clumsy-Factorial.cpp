#include <stack>
using namespace std;

class Solution {
public:
    int clumsy(int n) {
        stack<int> nums;
        stack<char> ops;
        for (int i = n; i > 0; --i)
        {
            if (nums.empty())
            {
                nums.push(i);
                ops.push('*');
                continue;
            }
            if (ops.top() == '*')
            {
                int t = nums.top();
                nums.pop();
                nums.push(t * i);
                ops.pop();
                ops.push('/');
            }
            else if (ops.top() == '/')
            {
                int t = nums.top();
                nums.pop();
                nums.push(t / i);
                ops.pop();
                ops.push('+');
            }
            else if (ops.top() == '+')
            {
                nums.push(i);
                ops.pop();
                ops.push('-');
            }
            else if (ops.top() == '-')
            {
                nums.push(-i);
                ops.push('*');
            }
        }
        int sum = 0;
        while (!nums.empty())
        {
            sum += nums.top();
            nums.pop();
        }
        return sum;
    }
};



//需要先计算乘法、除法，然后遇到符号，用 -i 压入栈，这样方便后面的计算，while 循环只需
//加上nums的栈顶数即可