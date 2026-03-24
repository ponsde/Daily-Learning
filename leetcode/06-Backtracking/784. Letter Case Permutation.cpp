#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    vector<string> letterCasePermutation(string s)
    {
        vector<string> ans;
        string t;
        int l = s.size();
        auto dfs = [&](auto &&self, int i)
        {
            if (i == l)
            {
                ans.push_back(t);
                return;
            }

            if (s[i] >= '0' && s[i] <= '9')
            {
                t.push_back(s[i]);
                self(self, i + 1);
                t.pop_back();
            }
            else
            {
                t.push_back(s[i]);
                self(self, i + 1);
                t.pop_back();
                if (s[i] >= 'a' && s[i] <= 'z')
                {
                    t.push_back(s[i] - 32);
                    self(self, i + 1);
                    t.pop_back();
                }
                else
                {
                    t.push_back(s[i] + 32);
                    self(self, i + 1);
                    t.pop_back();
                }
            }
        };
        dfs(dfs, 0);
        return ans;
    }
};

/*
    简单的回溯
    注意数字处也要进行pop，因为数字从后面回来的时候，已经被push了数字了，如果不pop会出问题
*/