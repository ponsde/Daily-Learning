#include <iostream>
#include <vector>
#include <algorithm>
#include <unordered_map>

using namespace std;

void help(vector<vector<string>>& vec, vector<int>& k, int cnt, int n);

vector<int> ans(26);

int main(void)
{
    int n;
    cin >> n;
    vector<vector<string>> vec(n, vector<string>(2));
    for (int i = 0; i < n; ++i)
    {
        string a, b;
        cin >> a >> b;
        vec[i][0] = a;
        vec[i][1] = b;
        int la = a.size();
        int lb = b.size();
        vector<int> va(26);
        vector<int> vb(26);
        for (int j = 0; j < la; ++j)
        {
            va[a[j] - 'a']++;
        }
        for (int j = 0; j < lb; ++j)
        {
            vb[b[j] - 'a']++;
        }
        for (int j = 0; j < 26; ++j)
        {
            ans[j] += max(va[j], vb[j]);
        }
    }
    for (int i = 0; i < 26; ++i)
    {
        cout << ans[i];
        if (i == 25)
        {
            break;
        }
        cout << '\n';
    }
}


// 比赛结束问了ai，不用每个单词都看一遍的递归回溯做
// 用递归回溯做是2的n次方复杂度，数据范围会超时
// 然后就用这个来，每次结束直接看当前两个单词26个字母中哪个最多即可
// 速度快多了








/*
#include <iostream>
#include <vector>
#include <algorithm>
#include <unordered_map>

using namespace std;

void help(vector<vector<string>>& vec, vector<int>& k, int cnt, int n);

vector<int> ans(26);

int main(void)
{
    int n;
    cin >> n;
    vector<vector<string>> vec(n, vector<string>(2));
    for (int i = 0; i < n; ++i)
    {
        string a, b;
        cin >> a >> b;
        vec[i][0] = a;
        vec[i][1] = b;
    }
    vector<int> k(26);
    help(vec, k, 0, n);
    for (int i = 0; i < 26; ++i)
    {
        cout << ans[i];
        if (i == 25)
        {
            break;
        }
        cout << '\n';
    }
}

void help(vector<vector<string>>& vec, vector<int>& k, int cnt, int n)
{
    if (cnt == n)
    {
        for (int i = 0; i < 26; ++i)
        {
            ans[i] = max(ans[i], k[i]);
        }
        return;
    }
    string left = vec[cnt][0];
    string right = vec[cnt][1];
    unordered_map<int, int> hash;
    int lt = left.size();
    int lr = right.size();
    for (int i = 0; i < lt; ++i)
    {
        int m = left[i] - 'a';
        k[m]++;
        hash[m]++;
    }
    help(vec, k, cnt + 1, n);
    for (auto i = hash.begin(); i != hash.end(); ++i)
    {
        int a = i->first;
        int b = i->second;
        k[a] -= b;
    }
    hash.clear();
    for (int i = 0; i < lr; ++i)
    {
        int m = right[i] - 'a';
        k[m]++;
        hash[m]++;
    }
    help(vec, k, cnt + 1, n);
    for (auto i = hash.begin(); i != hash.end(); ++i)
    {
        int a = i->first;
        int b = i->second;
        k[a] -= b;
    }
}
*/
