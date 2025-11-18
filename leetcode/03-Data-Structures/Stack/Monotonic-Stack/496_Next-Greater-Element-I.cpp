#include <vector>
#include <unordered_map>
#include <stack>

using namespace std;

class Solution
{
public:
    vector<int> nextGreaterElement(vector<int> &nums1, vector<int> &nums2)
    {
        int l1 = nums1.size();
        int l2 = nums2.size();
        vector<int> ans(l1, -1);
        unordered_map<int, int> hash;
        for (int i = 0; i < l1; ++i)
        {
            hash[nums1[i]] = i;
        }
        stack<int> st;
        for (int i = 0; i < l2; ++i)
        {
            int m = nums2[i];
            while (!st.empty() && m > st.top())
            {
                ans[hash[st.top()]] = m;
                st.pop();
            }
            if (hash.count(m))
            {
                st.push(m);
            }
        }
        return ans;
    }
};

// 从左向右历遍
// 先用hash表储存nums1中元素和对应的索引
// 然后在nums2从左向右历遍，当遇到nums1中的元素是压入栈
// 当栈不为空时判断之后的数是否比栈顶的数大，若大则修改ans

class Solution
{
public:
    vector<int> nextGreaterElement(vector<int> &nums1, vector<int> &nums2)
    {
        int l1 = nums1.size();
        int l2 = nums2.size();
        vector<int> ans(l1, -1);
        unordered_map<int, int> hash;
        for (int i = 0; i < l1; ++i)
        {
            hash[nums1[i]] = i;
        }
        stack<int> st;
        for (int i = l2 - 1; i >= 0; --i)
        {
            int m = nums2[i];
            while (!st.empty() && m > st.top())
            {
                st.pop();
            }
            if (!st.empty() && hash.count(m))
            {
                ans[hash[m]] = st.top();
            }
            st.push(m);
        }
        return ans;
    }
};

// 从右向左历遍， 当未遇到nums1的数时，正常的单调递增，当遇到时，将栈顶的值放入ans中