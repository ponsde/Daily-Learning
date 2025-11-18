#include <vector>
#include <stack>

using namespace std;

class Solution
{
public:
    vector<int> dailyTemperatures(vector<int> &temperatures)
    {
        int l = temperatures.size();
        vector<int> ans(l);
        stack<int> st;
        for (int i = l - 1; i >= 0; --i)
        {
            int m = temperatures[i];
            while (!st.empty() && temperatures[st.top()] <= m)
            {
                st.pop();
            }
            if (!st.empty())
            {
                ans[i] = st.top() - i;
            }
            st.push(i);
        }
        return ans;
    }
};

// 第一种从后往前历遍
// 当ans初始化时，值会是0， 因此当栈为空时不用令ans[i] = 0

class Solution
{
public:
    vector<int> dailyTemperatures(vector<int> &temperatures)
    {
        int l = temperatures.size();
        vector<int> ans(l);
        stack<int> st;
        for (int i = 0; i < l; ++i)
        {
            int m = temperatures[i];
            while (!st.empty() && m > temperatures[st.top()]) // 不能为>=，会考虑气温相同也算升温
            {
                ans[st.top()] = i - st.top();
                st.pop();
            }
            st.push(i);
        }
        return ans;
    }
};

// 第二种从前往后
// 同样ans初始化全为0，因此当前后相同时跳过
// 当前值小于等于前值时，压入栈，向后历遍
// 直至遇到第一个大于前值的气温，将之前的值全部清空，并将对应天数填入ans