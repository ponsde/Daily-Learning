#include <bits/stdc++.h>

using namespace std;

class Solution
{
public:
    int maxDistance(vector<int> &nums1, vector<int> &nums2)
    {
        reverse(nums1.begin(), nums1.end());
        reverse(nums2.begin(), nums2.end());
        int l1 = nums1.size();
        int l2 = nums2.size();
        int ans = 0;
        for (int j = 0; j < l2; ++j)
        {
            int m = nums2[j];
            int i = upper_bound(nums1.begin(), nums1.end(), m) - nums1.begin() - 1;
            if (i < 0 || j - i > l2 - l1)
                continue;

            ans = max(ans, l2 - l1 + i - j);
        }
        return ans;
    }
};

/*
    看到单调递减但二分需要单调递增，就弄成先reverse然后二分
    最开始用lower_bound，但后面upper更适合，lower_bound还需要判断，同时如果相同还需要往前走太麻烦了
    直接用upper_bound然后下标-1，如果小于0跳过，这样找到的就是最好的

    我去，还能反着二分，传入greater就行
*/

class Solution
{
public:
    int maxDistance(vector<int> &nums1, vector<int> &nums2)
    {

        int l1 = nums1.size();
        int l2 = nums2.size();
        int ans = 0;
        for (int j = 0; j < l2; ++j)
        {
            int m = nums2[j];
            int i = lower_bound(nums1.begin(), nums1.end(), m, greater<>()) - nums1.begin();
            if (i == l1 || i > j)
                continue;

            ans = max(ans, j - i);
        }
        return ans;
    }
};

// 还有双指针做法

class Solution
{
public:
    int maxDistance(vector<int> &nums1, vector<int> &nums2)
    {

        int i = 0;
        int l1 = nums1.size();
        int l2 = nums2.size();
        int ans = 0;
        for (int j = 0; j < l2; ++j)
        {
            while (i < l1 && nums1[i] > nums2[j])
                ++i;
            if (i == l1)
                break;
            if (i > j)
                continue;
            ans = max(ans, j - i);
        }
        return ans;
    }
};

/*
    因为是单调递减的，那么移动j找i，如果i到了l1
    那么说明j及其后面的都不可能大于nums1[i]，所以break

*/