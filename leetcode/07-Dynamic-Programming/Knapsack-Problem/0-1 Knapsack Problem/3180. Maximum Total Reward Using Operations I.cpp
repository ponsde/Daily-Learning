#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
    int maxTotalReward(vector<int>& rewardValues) {
        int l = rewardValues.size();
        sort(rewardValues.begin(), rewardValues.end());
        int mx = rewardValues.back();
        vector<int> dp(2 * mx + 1);
        dp[0] = 1;
        for (int i = 0; i < l; ++i)
        {
            int x = rewardValues[i];
            for (int j = x - 1; j >= 0; --j)
            {
                dp[j + x] |= dp[j];
            }
        }
        for (int i = 2 * mx; i >= 0; --i)
        {
            if (dp[i] > 0)
            {
                return i;
            }
        }
        return 0;
    }
};

/*
    对于第i个数，它的大小是x
    那么就在所有小于x的数加上x
    为了能最大，那么前面的数要尽可能的大
    因此通过先sort，然后从小到大历遍，让小的数不被浪费
    然后因为下标只能用一次，那么直接从后往前更新dp数组，保证每个数只能用一次
*/

class Solution {
public:
    int maxTotalReward(vector<int>& rewardValues) {
        sort(rewardValues.begin(), rewardValues.end());
        rewardValues.erase(unique(rewardValues.begin(), rewardValues.end()), rewardValues.end());
        int mx = *max_element(rewardValues.begin(), rewardValues.end());
        int l = rewardValues.size();
        bitset<100000> f{1};
        for (int i = 0; i < l; ++i)
        {
            int x = rewardValues[i];
            int diff = f.size() - x;
            f |= ((f << diff) >> diff) << x;
        }
        for (int i = 2 * mx - 1; i >= 0; --i)
        {
            if (f[i] > 0)
            {
                return i;
            }
        }
        return 0;
    }
};

/*
    这个有意思，位运算，他将每个数换成其中的位，这样不用一个个看过去，而是一块平移即可
    bitset用的少，要多学学
*/