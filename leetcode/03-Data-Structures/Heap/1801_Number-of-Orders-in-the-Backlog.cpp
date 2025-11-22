#include <vector>
#include <queue>
#include <utility>

using namespace std;

class Solution
{
public:
    int getNumberOfBacklogOrders(vector<vector<int>> &orders)
    {
        int MOD = 1000000007;
        priority_queue<pair<int, int>, vector<pair<int, int>>, greater<>> sell;
        priority_queue<pair<int, int>> buy;
        for (auto &i : orders)
        {
            int price = i[0];
            int amount = i[1];
            int orderType = i[2];
            if (orderType == 0)
            {
                while (amount > 0 && !sell.empty() && sell.top().first <= price)
                {
                    int p = sell.top().first;
                    int t = sell.top().second;
                    sell.pop();
                    if (amount < t)
                    {
                        t -= amount;
                        sell.push(make_pair(p, t));
                        amount = 0;
                        break;
                    }
                    amount -= t;
                }
                if (amount > 0)
                {
                    buy.push(make_pair(price, amount));
                }
            }
            else
            {
                while (amount > 0 && !buy.empty() && buy.top().first >= price)
                {
                    int p = buy.top().first;
                    int t = buy.top().second;
                    buy.pop();
                    if (amount < t)
                    {
                        t -= amount;
                        buy.push(make_pair(p, t));
                        amount = 0;
                        break;
                    }
                    amount -= t;
                }
                if (amount > 0)
                {
                    sell.push(make_pair(price, amount));
                }
            }
        }
        long long sum = 0;
        while (!sell.empty())
        {
            sum += sell.top().second;
            sell.pop();
            sum %= MOD;
        }
        while (!buy.empty())
        {
            sum += buy.top().second;
            buy.pop();
            sum %= MOD;
        }
        return sum;
    }
};

// 分为两种积压订单，买订单和卖订单，联想现实的市场即可
// 别把积压订单看作同一堆就可以了，

// pair在utility头文件里