#include <bits/stdc++.h>

using namespace std;

class Solution {
public:
  vector<long long> distance(vector<int> &nums) {
    int l = nums.size();
    unordered_map<int, vector<int>> hash;
    vector<long long> arr(l);
    for (int i = 0; i < l; ++i) {
      hash[nums[i]].push_back(i);
    }
    for (auto [_, vec] : hash) {
      int lv = vec.size();
      vector<long long> s(lv + 1);
      for (int i = 0; i < lv; ++i) {
        s[i + 1] = s[i] + vec[i];
      }
      for (int i = 0; i < lv; ++i) {
        int t = vec[i];
        long long left = 1LL * i * vec[i] - s[i];
        long long right = s[lv] - s[i] - 1LL * (lv - i) * t;
        arr[t] = left + right;
      }
    }

    return arr;
  }
};

/*
 * https://leetcode.cn/problems/minimum-operations-to-make-all-array-elements-equal/solutions/2191417/yi-tu-miao-dong-pai-xu-qian-zhui-he-er-f-nf55/
 * 妈耶，竟然忘记了，虽然脑子里想过前缀和但还是忘记了
 *
 */
