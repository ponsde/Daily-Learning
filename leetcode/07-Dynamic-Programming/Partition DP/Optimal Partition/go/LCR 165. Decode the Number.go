package Optimal_Partition

import "strconv"

func crackNumber(ciphertext int) int {
	s := strconv.Itoa(ciphertext)
	n := len(s)
	dp := make([]int, n+1)
	dp[0] = 1
	for i := range s {
		dp[i+1] += dp[i]
		if i > 0 {
			switch s[i-1] {
			case '1':
				dp[i+1] += dp[i-1]
			case '2':
				if s[i] >= '0' && s[i] <= '5' {
					dp[i+1] += dp[i-1]
				}
			}
		}
	}
	return dp[n]
}

/*
* 跟91一样
 */
