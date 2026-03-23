#include <bits/stdc++.h>

using namespace std;

class Solution
{
    string MAPPING[10] = {"", "", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"};

public:
    vector<string> letterCombinations(string digits)
    {
        vector<string> ans;
        string path;
        auto dfs = [&](auto &&self, int i)
        {
            if (i == digits.size())
            {
                ans.push_back(path);
                return;
            }
            for (auto x : MAPPING[digits[i] - '0'])
            {
                path.push_back(x);
                self(self, i + 1);
                path.pop_back();
            }
        };
        dfs(dfs, 0);
        return ans;
    }
};

/*
    正常的回溯
    在类里面的string [] 初始化需要表明有多少，比如这里就需要是[10]，不能让编译器自己弄
*/