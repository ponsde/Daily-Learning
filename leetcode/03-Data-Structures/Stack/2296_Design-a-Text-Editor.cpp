#include <stack>
#include <string>
#include <algorithm>

using namespace std;
class TextEditor
{
    stack<char> stk;
    stack<char> t;

public:
    TextEditor()
    {
    }

    void addText(string text)
    {
        for (auto c : text)
        {
            stk.push(c);
        }
    }

    int deleteText(int k)
    {
        int ld = min(k, (int)stk.size()); // 注意光标可以向左撞墙，但栈不行，找出需要移动的距离
        for (int i = 0; i < ld; ++i)
        {
            stk.pop();
        }
        return ld;
    }

    string cursorLeft(int k)
    {
        int mv = min(k, (int)stk.size()); // 注意问题同上
        for (int i = 0; i < mv; ++i)
        {
            t.push(stk.top());
            stk.pop();
        }
        int d = min(10, (int)stk.size());
        stack<char> store; // 临时储存
        string ans = "";
        for (int i = 0; i < d; ++i)
        {
            char c = stk.top();
            ans.insert(0, 1, c);
            store.push(c);
            stk.pop();
        }
        while (!store.empty())
        {
            char c = store.top();
            stk.push(c);
            store.pop();
        }
        return ans;
    }

    string cursorRight(int k)
    {
        int mv = min(k, (int)t.size());
        for (int i = 0; i < mv; ++i)
        {
            stk.push(t.top());
            t.pop();
        }
        int d = min(10, (int)stk.size());
        stack<char> store;
        string ans = "";
        for (int i = 0; i < d; ++i)
        {
            char c = stk.top();
            ans.insert(0, 1, c);
            store.push(c);
            stk.pop();
        }
        while (!store.empty())
        {
            char c = store.top();
            stk.push(c);
            store.pop();
        }
        return ans;
    }
};

// 不算难的题目，只是需要注意光标的移动能撞墙但栈不行，容易出现空栈访问的情况，因此要找min(k, stack.size())