#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    vector<string> twoEditWords(vector<string> &queries, vector<string> &dictionary)
    {
        vector<string> ans;
        for (auto x : queries)
        {
            for (auto y : dictionary)
            {
                int lx = x.size();
                int ly = y.size();
                if (lx != ly)
                    continue;
                int cnt = 0;
                for (int i = 0; i < lx; ++i)
                {
                    if (x[i] != y[i])
                        cnt++;
                    if (cnt > 2)
                        break;
                }
                if (cnt <= 2)
                {
                    ans.push_back(x);
                    break;
                }
            }
        }
        return ans;
    }
};

/*
    暴力就过了...
*/