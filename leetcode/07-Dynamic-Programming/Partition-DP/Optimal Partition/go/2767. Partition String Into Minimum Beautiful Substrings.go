package Optimal_Partition

import (
	"fmt"
	"math"
)

func minimumBeautifulSubstrings(s string) int {
	base := 1
	m := make(map[string]bool)
	lens := make([]int, 0)
	for base < (1 << 16) {
		b := fmt.Sprintf("%b", base)
		lens = append(lens, len(b))
		m[b] = true
		base *= 5
	}

	n := len(s)
	dp := make([]int, n+1)
	for i := range dp {
		dp[i] = math.MaxInt32
	}
	dp[0] = 0
	for i := 0; i < n; i++ {
		res := math.MaxInt32
		for _, lg := range lens {
			j := i - lg + 1
			if j < 0 {
				break
			}
			if s[j] == '0' {
				continue
			}
			if m[s[j:i+1]] {
				res = min(res, dp[j])
			}
		}
		if res == math.MaxInt32 {
			continue
		}
		dp[i+1] = res + 1
	}

	if dp[n] == math.MaxInt32 {
		return -1
	}

	return dp[n]
}

/*
* 我都不确定咋就过了...
* 先记录好所有5的幂2进制和长度，然后历遍
* 若是满足，则记录其最小的分割数，因为这里只要dp中不是MaxInt32，就说明这个到不了
* 因此通过res和MaxInt32比较，就能跳过无可能情况
 */
