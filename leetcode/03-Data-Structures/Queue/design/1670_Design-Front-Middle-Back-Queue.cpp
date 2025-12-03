#include <vector>
#include <deque>

using namespace std;

class FrontMiddleBackQueue
{
    deque<int> dq;

public:
    FrontMiddleBackQueue()
    {
    }

    void pushFront(int val)
    {
        dq.insert(dq.begin(), val);
    }

    void pushMiddle(int val)
    {
        int l = dq.size();
        int m = l / 2;
        dq.insert(dq.begin() + m, val);
    }

    void pushBack(int val)
    {
        dq.push_back(val);
    }

    int popFront()
    {
        if (dq.empty())
        {
            return -1;
        }
        int t = dq.front();
        dq.erase(dq.begin());
        return t;
    }

    int popMiddle()
    {
        if (dq.empty())
        {
            return -1;
        }
        int l = dq.size();
        int m = (l - 1) / 2;
        int t = dq[m];
        dq.erase(dq.begin() + m);
        return t;
    }

    int popBack()
    {
        if (dq.empty())
        {
            return -1;
        }
        int t = dq.back();
        dq.pop_back();
        return t;
    }
};

// 简单的实现，需要注意的是当l为偶数时，popMiddle需要删除前一个中间元素
// 因此是 (l - 1) / 2

// 灵神的双队列实现

class FrontMiddleBackQueue
{
    deque<int> left, right;
    void balance()
    {
        if (left.size() > right.size())
        {
            right.push_front(left.back());
            left.pop_back();
        }
        else if (left.size() + 1 < right.size())
        {
            left.push_back(right.front());
            right.pop_front();
        }
    }

public:
    FrontMiddleBackQueue()
    {
    }

    void pushFront(int val)
    {
        left.push_front(val);
        balance();
    }

    void pushMiddle(int val)
    {
        left.push_back(val);
        balance();
    }

    void pushBack(int val)
    {
        right.push_back(val);
        balance();
    }

    int popFront()
    {
        if (right.empty())
        {
            return -1;
        }
        int t;
        if (left.empty())
        {
            t = right.front();
            right.pop_front();
        }
        else
        {
            t = left.front();
            left.pop_front();
        }
        balance();
        return t;
    }

    int popMiddle()
    {
        if (right.empty())
        {
            return -1;
        }
        int t;
        if (left.size() == right.size())
        {
            t = left.back();
            left.pop_back();
        }
        else
        {
            t = right.front();
            right.pop_front();
        }
        return t;
    }

    int popBack()
    {
        if (right.empty())
        {
            return -1;
        }
        int t = right.back();
        right.pop_back();
        balance();
        return t;
    }
};

// 通过2个双端队列维护前后两部分，left的长度 <= right的长度，保证中间元素在right队列头部或者left队列尾部
// 若right为空，则队列为空
// 若left和right等长，则中间元素在left尾部，否则在right头部
// 在特定时候使用balance函数保持两个队列的长度关系
// 这样可以使得push和pop操作均摊O(1)时间复杂度