#include <iostream>
#include <vector>

using namespace std;

void help(vector<int> &vec, int k, int sum, int c, int left);

int cnt = 0;

int main(void)
{
    int n, k;
    cin >> n >> k;
    vector<int> vec;
    for (int i = 0; i < n; ++i)
    {
        int a;
        cin >> a;
        vec.push_back(a);
    }
    help(vec, k, 0, 0, 0);
    cout << cnt << endl;
}

void help(vector<int> &vec, int k, int sum, int c, int left)
{
    int lm = vec.size() - left;
    if (k - c > lm)
    {
        return;
    }
    if (c == k)
    {
        if (sum < 2)
        {
            return;
        }
        if (sum == 2)
        {
            cnt++;
            return;
        }
        if (sum % 2 == 0)
        {
            return;
        }
        for (int i = 3; 1LL * i * i <= sum; i += 2)
        {
            if (sum % i == 0)
            {
                return;
            }
        }
        cnt++;
        return;
    }
    if (left == (int)vec.size())
    {
        return;
    }
    int t = vec[left];
    help(vec, k, sum, c, left + 1);
    help(vec, k, sum + t, c + 1, left + 1);
}

// 通过不断递归，选择与不选，dfs没问题，最主要的问题是我不知但素数该怎么判断，导致一直错
// 0、1不为素数，2为素数，偶数不为素数
// 然后通过迭代i到sqrt(x)，看x是否会被 x % i == 0,若为0则说明其不为素数
// 涨知识了
