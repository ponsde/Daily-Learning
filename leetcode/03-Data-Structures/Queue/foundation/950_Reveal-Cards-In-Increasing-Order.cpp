#include <vector>
#include <algorithm>
#include <deque>

using namespace std;

// 找第一个跳第二个，重复该过程
// sort deck数组
// 然后每个找到的第一个放入第一小、第二小的数，循环直到i历遍deck
// skip决定当前坑是否跳过

class Solution {
public:
    vector<int> deckRevealedIncreasing(vector<int>& deck) {
        int l = deck.size();
        sort(deck.begin(), deck.end());
        deque<int> ans(l, -1);
        int skip = false;
        int j = 0;
        for (int i = 0; i < l; ++i)
        {
            while (1)
            {
                if (ans[j] == -1)
                {
                    if (skip == true)
                    {
                        skip = false;
                    }
                    else
                    {
                        skip = true;
                        ans[j] = deck[i];
                        break;
                    }
                }
                ++j;
                if (j == l)
                {
                    j = 0;
                }
            }
        }
        vector<int> result;
        for (int i = 0; i < l; ++i)
        {
            result.push_back(ans[i]);
        }
        return result;
    }

};




class Solution
{
public:
    vector<int> deckRevealedIncreasing(vector<int> &deck)
    {
        sort(deck.begin(), deck.end());
        int l = deck.size();
        vector<int> ans(l, -1);
        bool check = false;
        int j = 0;
        int cur = 0;
        while (cur < l)
        {
            if (ans[j] == -1)
            {
                if (check == true)
                {
                    ++j;
                    check = false;
                }
                else
                {
                    ans[j] = deck[cur];
                    cur++;
                    j++;
                    check = true;
                }
            }
            else
            {
                ++j;
            }
            if (j == l)
            {
                j = 0;
            }
        }
        return ans;
    }
};

// “逆”约瑟夫问题

// 看第一个然后跳过第二个，看过一轮回到最开始跳过的位置重复看第一个然后跳过第二个，直到没有

// 只在空坑上进行判断，若不为空坑则跳过

// 没用上队列...

/*
约瑟夫问题：
N个数字围成一圈。从0开始出圈，往后每次跳一个出一个。已知原序列按顺序0到N-1，求出圈序列。
核心：跳过数字找下一个数字

本题：
N个数字围城一圈。从0开始出圈，往后每次跳一个出一个。已知出圈序列是顺序0到N-1，求原序列。
核心：跳过空位找空位

我们要做的是：从0到N-1，依次填坑
我们要做的是：从0到N-1，依次填坑
我们要做的是：从0到N-1，依次填坑

两个例子：

N = 7
R0: _ _ _ _ _ _ _ 初始7个坑，坑是首尾相连的
R1: 0 _ 1 _ 2 _ 3 第一轮从初始坑开始，填一个坑跳过一个坑
R2: 0 a 1 4 2 b 3 填数字3后跳过了一个坑a，填数字4后跳过坑b
R3: 0 5 1 4 2 _ 3 填数字5后只剩下一个坑
R4: 0 5 1 4 2 6 3 果断填完

N = 8
R0: _ _ _ _ _ _ _ _ 首尾相连的8个坑
R1: 0 _ 1 _ 2 _ 3 _ 第一轮从初始坑开始，填一个坑跳过一个坑
R2: 0 4 1 b 2 _ 3 a 填数字3后跳过了一个坑a，填数字4后跳过坑b
R3: 0 4 1 _ 2 5 3 _ 填数字5后只剩下两个坑
R4: 0 4 1 6 2 5 3 7 果断填完

https://leetcode.cn/problems/reveal-cards-in-increasing-order/solutions/25300/ni-yue-se-fu-wen-ti-by-tiempo/

*/