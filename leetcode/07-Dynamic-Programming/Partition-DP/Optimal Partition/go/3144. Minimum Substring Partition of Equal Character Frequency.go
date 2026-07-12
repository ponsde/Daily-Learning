package Optimal_Partition

import "math"

func minimumSubstringsInPartition(s string) int {
	n := len(s)
	dp := make([]int, n+1)
	for i := range s {
		t := make([]int, 26)
		res := math.MaxInt
		for j := i; j >= 0; j-- {
			t[s[j]-'a']++
			mx := math.MinInt
			mn := math.MaxInt
			for _, v := range t {
				if v != 0 {
					mx = max(mx, v)
					mn = min(mn, v)
					if mx != mn {
						break
					}
				}
			}
			if mx != mn {
				continue
			}

			res = min(res, dp[j])
		}
		dp[i+1] = res + 1
	}
	return dp[n]
}

/*
* 我咋老是把循环里用 i 而不是 j
* 有点老实的历遍 26 来判断，没想到别的好的
 */
