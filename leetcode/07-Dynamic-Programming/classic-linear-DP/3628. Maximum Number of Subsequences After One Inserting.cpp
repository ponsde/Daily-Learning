class Solution {
public:
    long long numOfSubsequences(string s) {
        
        int l = s.size();
        auto count_str = [&](string t)
        {
            int lt = t.size();
            vector<vector<long long>> dp(l + 1, vector<long long>(lt + 1));
            for (int i = 0; i <= l; ++i)
            {
                dp[i][0] = 1;
            }
            for (int i = 0; i < l; ++i)
            {
                for (int j = 0; j < lt; ++j)
                {
                    if (s[i] == t[j])
                    {
                        dp[i + 1][j + 1] = dp[i][j] + dp[i][j + 1];
                    }
                    else
                    {
                        dp[i + 1][j + 1] = dp[i][j + 1];
                    }
                }
            }
            return dp[l][lt];
        };
        long long a = count_str(string("LCT"));
        long long b = count_str(string("LC"));
        long long c = count_str(string("CT"));
        vector<long long> cnt_l(l);
        vector<long long> cnt_t(l);
        int sk = 0;
        for (int i = 0; i < l; ++i)
        {
            sk += s[i] == 'L';
            cnt_l[i] = sk;
        }
        sk = 0;
        for (int i = l - 1; i >= 0; --i)
        {
            sk += s[i] == 'T';
            cnt_t[i] = sk;
        }
        long long mx = 0;
        for (int i = 1; i < l; ++i)
        {
            mx = max(mx, cnt_l[i - 1] * cnt_t[i]);
        }
        return max({b, c, mx}) + a;

    }
};

/*
 * 先通过分别计算LCT，LC，CT，然后再分别计算L、C前后的乘积最大值
 * 最后统合看哪个最大选择插入的方式
