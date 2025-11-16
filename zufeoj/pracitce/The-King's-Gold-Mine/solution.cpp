#include <iostream>
#include <vector>
#include <algorithm>
#include <climits>

using namespace std;

void help(vector<vector<int>> &vec, int m, int k, int sum, int col);

int best = INT_MIN;

int main(void)
{
    int n, m;
    cin >> n >> m;
    vector<vector<int>> vec;
    for (int i = 0; i < n; ++i)
    {
        int w, v;
        cin >> w >> v;
        vector<int> temp{w, v};
        vec.push_back(temp);
    }
    help(vec, m, 0, 0, 0);
    cout << best << endl;
}

void help(vector<vector<int>> &vec, int m, int k, int sum, int col)
{
    if (k > m)
    {
        return;
    }
    if (k <= m)
    {
        best = max(sum, best);
    }
    if (col == vec.size())
    {
        return;
    }
    auto t = vec[col];
    int wi = t[0];
    int vi = t[1];
    help(vec, m, k + wi, sum + vi, col + 1);
    help(vec, m, k, sum, col + 1);
}

// 老师用的dp，我目前还没学到，就用这个做了，等日后做到了再补回来dp的做法