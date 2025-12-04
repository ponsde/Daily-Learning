#include <deque>
#include <unordered_map>

using namespace std;

// 写了三种的解法

class Checkout
{
    deque<int> dq;
    deque<int> mx_value;
    unordered_map<int, int> hash;

public:
    Checkout()
    {
    }

    int get_max()
    {
        if (dq.empty())
        {
            return -1;
        }
        while (hash.find(mx_value.front()) != hash.end() && hash[mx_value.front()] > 0)
        {
            hash[mx_value.front()]--;
            mx_value.pop_front();
        }
        int ans = mx_value.front();
        return ans;
    }

    void add(int value)
    {
        deque<int> t;
        while (!mx_value.empty() && value >= mx_value.back())
        {
            t.push_back(mx_value.back());
            mx_value.pop_back();
        }
        mx_value.push_back(value);
        while (!t.empty())
        {
            mx_value.push_back(t.back());
            t.pop_back();
        }
        dq.push_back(value);
    }

    int remove()
    {
        if (dq.empty())
        {
            return -1;
        }
        int ans = dq.front();
        dq.pop_front();
        hash[ans]++;
        return ans;
    }
};

// 第一种，因为中间用了一个临时的 deque，速度更慢，虽然是一遍过

class Checkout
{
    deque<int> dq;
    deque<int> mx_value;
    unordered_map<int, int> hash;

public:
    Checkout()
    {
    }

    int get_max()
    {
        if (dq.empty())
        {
            return -1;
        }
        while (!mx_value.empty() && hash[mx_value.front()] == 0)
        {
            mx_value.pop_front();
        }
        int ans = mx_value.front();
        return ans;
    }

    void add(int value)
    {
        while (!mx_value.empty() && value > mx_value.back())
        {
            hash[mx_value.back()]--;
            if (hash[mx_value.back()] < 0)
            {
                hash[mx_value.back()] = 0;
            }
            mx_value.pop_back();
        }
        mx_value.push_back(value);
        hash[value]++;
        dq.push_back(value);
    }

    int remove()
    {
        if (dq.empty())
        {
            return -1;
        }
        int ans = dq.front();
        if (hash[ans] > 0)
        {
            hash[ans]--;
        }
        dq.pop_front();
        return ans;
    }
};

// 第二种，hash表记录队列中还剩哪些元素
// 要注意的是remove的--和出列的--可能是同一个元素，导致其在hash表中的值小于0
// 若是在max函数中发现hash表中的值为0，则说明该元素已经不在队列中了，需要弹出
// 直到找到目标元素为止

class Checkout
{
    deque<int> dq;
    deque<int> mx_value;

public:
    Checkout()
    {
    }

    int get_max()
    {
        if (dq.empty())
        {
            return -1;
        }
        int ans = mx_value.front();
        return ans;
    }

    void add(int value)
    {
        while (!mx_value.empty() && value > mx_value.back())
        {
            mx_value.pop_back();
        }
        mx_value.push_back(value);
        dq.push_back(value);
    }

    int remove()
    {
        if (dq.empty())
        {
            return -1;
        }
        int ans = dq.front();
        if (ans == mx_value.front())
        {
            mx_value.pop_front();
        }
        dq.pop_front();
        return ans;
    }
};

// 第三种，直接维护一个单调队列，速度最快
// 因为remove是从左到右删除，当最大的元素被删除时，它之前的元素肯定全没了
// 因此在单调队列中可以直接出列
// 若是remove的元素是最大元素时，才需要将mx_value的front出列