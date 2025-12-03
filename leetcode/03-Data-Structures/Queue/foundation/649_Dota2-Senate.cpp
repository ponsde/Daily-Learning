#include <vector>
#include <queue>
#include <deque>
#include <algorithm>
#include <string>

using namespace std;

class Solution
{
public:
    string predictPartyVictory(string senate)
    {
        int cnt = 0;
        int l = senate.size();
        queue<char> q;
        for (int i = 0; i < l; ++i)
        {
            q.push(senate[i]);
        }
        while (!q.empty())
        {
            int kr = 0;
            int kd = 0;
            int sz = q.size();
            deque<char> dq;
            for (int i = 0; i < sz; ++i)
            {
                char m = q.front();
                q.pop();
                if (m == 'R')
                {
                    if (kr > 0)
                    {
                        kr--;
                    }
                    else
                    {
                        kd++;
                        dq.push_back('R');
                    }
                }
                else
                {
                    if (kd > 0)
                    {
                        kd--;
                    }
                    else
                    {
                        kr++;
                        dq.push_back('D');
                    }
                }
            }
            while (kr > 0)
            {
                auto frr = find(dq.begin(), dq.end(), 'R');
                if (frr == dq.end())
                {
                    break;
                }
                dq.erase(frr);
                kr--;
            }
            while (kd > 0)
            {
                auto fdd = find(dq.begin(), dq.end(), 'D');
                if (fdd == dq.end())
                {
                    break;
                }
                dq.erase(fdd);
                kd--;
            }
            int lq = dq.size();
            auto fr = find(dq.begin(), dq.end(), 'R');
            auto fd = find(dq.begin(), dq.end(), 'D');
            if (fr != dq.end() && fd == dq.end())
            {
                return "Radiant";
            }
            if (fr == dq.end() && fd != dq.end())
            {
                return "Dire";
            }
            for (int i = 0; i < lq; ++i)
            {
                q.push(dq[i]);
            }
        }
        return "NO";
    }
};

// 顺序历遍，若是R，则查看kr的数量，若大于0则抵消一个kr，否则将R加入下一轮队列
// 若是D，则查看kd的数量，若大于0则抵消一个kd，否则将D加入下一轮队列
// 一轮结束后，若kr或kd数量大于0，则从队列中删除对应数量的R或D,从前往后删除
// 若队列中只剩下R或D，则返回结果，否则继续下一轮

// 优化版

class Solution
{
public:
    string predictPartyVictory(string senate)
    {
        int l = senate.size();
        queue<int> qr, qd;
        for (int i = 0; i < l; ++i)
        {
            if (senate[i] == 'R')
            {
                qr.push(i);
            }
            else
            {
                qd.push(i);
            }
        }
        while (!qr.empty() && !qd.empty())
        {
            int ir = qr.front();
            qr.pop();
            int id = qd.front();
            qd.pop();
            if (ir < id)
            {
                qr.push(ir + l);
            }
            else
            {
                qd.push(id + l);
            }
        }
        if (qd.empty())
        {
            return "Radiant";
        }
        return "Dire";
    }
};

// 优化思路：使用两个队列分别存储R和D的索引位置，
// 每次比较两个队列的队首元素，较小的索引对应的禁言较大的索引的议员
// 并将较小索引的议员重新加入队列，索引值加上字符串长度l，表示下一轮的顺序
// 这种圆处理比我上面的要好，时间复杂度更好一些
// 最终当一个队列为空时，另一个队列对应的阵营获胜