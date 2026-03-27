#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    bool areSimilar(vector<vector<int>> &mat, int k)
    {
        int m = mat.size();
        int n = mat[0].size();
        int off = k % n;
        for (int i = 0; i < m; ++i)
        {
            vector<int> row = mat[i];
            if (i % 2 == 0)
            {
                reverse(row.begin(), row.end());
                reverse(row.begin(), row.begin() + n - off);
                reverse(row.begin() + n - off, row.end());
            }
            else
            {
                reverse(row.begin(), row.end());
                reverse(row.begin(), row.begin() + off);
                reverse(row.begin() + off, row.end());
            }
            if (row != mat[i])
                return false;
        }
        return true;
    }
};

/*
    之前刷视频刷到了一维数组向右移动off的情况，这里是二维数组，没啥区别
    若是向右移动，那么就是看off的大小，因为是向右移动，那么开头的off个就是移动过来的，所以reverse row 后将开头的off个reverse一下，剩下的reverse一下就好了
    若是向左移动，那么就是看off的大小，因为是向左移动，那么结尾的off个就是移动过来的，所以reverse row 后将结尾的off个reverse一下，剩下的reverse一下就好了
*/