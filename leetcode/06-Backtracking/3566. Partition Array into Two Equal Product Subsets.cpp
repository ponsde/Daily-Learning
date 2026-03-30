#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    bool checkEqualPartitions(vector<int> &nums, long long target)
    {
        int l = nums.size();
        auto dfs = [&](auto &&self, int i, long long num1, long long num2)
        {
            if (num1 > target || num2 > target)
                return false;
            if (i == l)
                return num1 == target && num2 == target;
            return self(self, i + 1, num1 * nums[i], num2) || self(self, i + 1, num1, num2 * nums[i]);
        };
        return dfs(dfs, 0, 1, 1);
    }
};

/*
    转化下思路，既然是求两个集合，那么参数直接放两个集合一起考虑，而不是单个集合
    如果是单个，在外面维护sum来看另一个区间是否合格就会溢出
    然后这里通过f (num1 > target || num2 > target) return false 来防止溢出和剪枝
*/