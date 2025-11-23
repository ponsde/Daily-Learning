#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

void help(vector<int> &va, vector<int> &vb, int pa, int pb,
          int cnt, int m, bool &check);

int main(void)
{
    int t;
    cin >> t;
    for (int i = 0; i < t; ++i)
    {
        vector<int> va(4);
        vector<int> vb(4);
        for (int j = 0; j < 4; ++j)
        {
            int o;
            cin >> o;
            va[j] = o;
        }
        for (int j = 0; j < 4; ++j)
        {
            int o;
            cin >> o;
            vb[j] = o;
        }
        int temp = 0;
        for (int q = 0; q < 4; ++q)
        {
            for (int w = 0; w < 4; ++w)
            {
                if (va[q] > vb[w])
                {
                    temp++;
                }
                else if (va[q] < vb[w])
                {
                    temp--;
                }
            }
        }
        bool check = false;
        if (temp > 0)
        {
            help(va, vb, 0, 0, 1, 0, check);
        }
        else if (temp < 0)
        {
            help(vb, va, 0, 0, 1, 0, check);
        }
        if (check == true)
        {
            cout << "yes";
        }
        else
        {
            cout << "no";
        }
        if (i != t - 1)
        {
            cout << '\n';
        }
    }
}

void help(vector<int> &va, vector<int> &vb, int pa, int pb,
          int cnt, int m, bool &check)
{
    if (check == true)
    {
        return;
    }
    if (m == 4)
    {
        if (pb < 0 && pa > 0)
        {
            check = true;
        }
        return;
    }
    if (cnt == 11)
    {
        return;
    }
    int k = 0;
    for (int i = 0; i < 4; ++i)
    {
        if (cnt < vb[i])
        {
            k--;
        }
        else if (cnt > vb[i])
        {
            k++;
        }
    }
    int qian = k;
    k = 0;
    for (int i = 0; i < 4; ++i)
    {
        if (cnt < va[i])
        {
            k--;
        }
        else if (cnt > va[i])
        {
            k++;
        }
    }
    help(va, vb, pa + k, pb + qian, cnt, m + 1, check);
    help(va, vb, pa + k, pb + qian, cnt + 1, m + 1, check);
    help(va, vb, pa, pb, cnt + 1, m, check);
}

// 竞赛时只考虑了 A > B > C > A这样,没考虑 C < A < B < C 的情况,哎