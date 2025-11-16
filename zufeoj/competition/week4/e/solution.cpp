#include <iostream>
#include <vector>
#include <queue>
 
using namespace std; 
 
int main(void) 
{ 
    int n, m; 
    cin >> n >> m; 
    vector<vector<int>> vec(n, vector<int>(m)); 
    for (int i = 0; i < n; ++i) 
    { 
        for (int j = 0; j < m; ++j) 
        { 
            int a; 
            cin >> a; 
            vec[i][j] = a; 
        } 
    } 
    auto check = [&](int k) 
    { 
        vector<int> cnt(m, 0);
        vector<int> chosen(n, 0);
        for (int i = 0; i < n; ++i)
        {
            int first = vec[i][0] - 1;
            cnt[first]++;
        }
        vector<bool> over(m, false);
        queue<int> q;
        for (int i = 0; i < m; ++i)
        {
            if (cnt[i] > k)
            {
                over[i] = true;
                q.push(i);
            }
        }
        while (!q.empty())
        {
            int discard = q.front();
            q.pop();
            for (int i = 0; i < n; ++i)
            {
                int current = vec[i][chosen[i]] - 1;
                if (current == discard)
                {
                    bool chose = false;
                    while (chosen[i] < m - 1)
                    {
                        int t = vec[i][++chosen[i]] - 1;
                        if (over[t] == false)
                        {
                            chose = true;
                            cnt[t]++;
                            if (cnt[t] > k)
                            {
                                q.push(t);
                                over[t] = true;
                            }
                            break;
                        }
                    }
                    if (chose == false)
                    {
                        return false;
                    }
                }
            }
        }
        return true;
    }; 
    int left = 1; 
    int right = n + 1; 
    while (left < right) 
    { 
        int k = left + (right - left) / 2; 
        check(k) ? right = k : left = k + 1; 
    } 
    cout << left; 
}