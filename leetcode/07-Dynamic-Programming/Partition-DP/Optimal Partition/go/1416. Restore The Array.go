package Optimal_Partition

import (
	"fmt"
	"strconv"
)

func numberOfArrays(s string, k int) int {
	MOD := 1000_000_007
	n := len(s)
	len := len(fmt.Sprintf("%d", k))
	dp := make([]int, n+1)
	dp[0] = 1
	for i := range s {
		for j := i - len + 1; j <= i; j++ {
			if j < 0 {
				continue
			}
			if s[j] == '0' {
				continue
			}
			t, _ := strconv.Atoi(s[j : i+1])
			if t > k || t < 1 {
				continue
			}

			dp[i+1] = (dp[i+1] + dp[j]) % MOD
		}
	}
	return dp[n] % MOD
}

/*
* 一般吧，先计算k的长度，我这里是从前往后，所以有个strconv，效率有点慢，从后往前就好了
 */
