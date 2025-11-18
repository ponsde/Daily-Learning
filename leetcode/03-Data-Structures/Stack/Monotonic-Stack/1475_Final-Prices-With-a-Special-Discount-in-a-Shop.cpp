#include <vector>
#include <stack>

using namespace std;

class Solution
{
public:
    vector<int> finalPrices(vector<int> &prices)
    {
        int l = prices.size();
        stack<int> st;
        for (int i = 0; i < l; ++i)
        {
            int m = prices[i];
            while (!st.empty() && m <= prices[st.top()])
            {
                int j = st.top();
                st.pop();
                prices[j] -= m;
            }
            st.push(i);
        }
        return prices;
    }
};

// 从左往右做法，直接用price的做法
// 从左往右需要记住下标，这样当遇到小于的值能往回找

class Solution
{
public:
    vector<int> finalPrices(vector<int> &prices)
    {
        int l = prices.size();
        stack<int> st;
        st.push(0); // 压入0减少判断
        for (int i = l - 1; i >= 0; --i)
        {
            int m = prices[i];
            while (m < st.top())
            {
                st.pop();
            }
            prices[i] -= st.top();
            st.push(m);
        }
        return prices;
    }
};

// 从右向左，直接储存值，当当前的值比栈顶的小时弹出直到栈顶比当前值小，此时为距离当前值最近的较小值
