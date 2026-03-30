#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    bool checkStrings(string s1, string s2)
    {
        int l = s1.size();
        int nums1[2][26] = {0};
        int nums2[2][26] = {0};

        for (int i = 0; i < l; ++i)
        {
            nums1[i % 2][s1[i] - 'a']++;
            nums2[i % 2][s2[i] - 'a']++;
        }

        for (int i = 0; i < 2; ++i)
        {
            for (int j = 0; j < 26; ++j)
            {
                if (nums1[i][j] != nums2[i][j])
                    return false;
            }
        }
        return true;
    }
};

/*
    多余i < j， j - i 为偶数就可以无限制的交换
    那么即为偶数位的字符可以无限交换，奇数位的字符可以无限交换
    那么只要两者出现的次数相同即可，也就是s1奇数位的字符出现的次数和s2奇数位的字符出现的次数相同，s1偶数位的字符出现的次数和s2偶数位的字符出现的次数相同
*/