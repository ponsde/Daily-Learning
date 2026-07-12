package Optimal_Partition

func numDecodings(s string) int {
	n := len(s)
	dp := make([]int, n+1)
	dp[0] = 1
	for i := range s {
		if s[i] >= '1' && s[i] <= '9' {
			dp[i+1] += dp[i]
		}
		if i > 0 {
			if s[i-1] == '1' {
				dp[i+1] += dp[i-1]
			} else if s[i-1] == '2' && (s[i] >= '0' && s[i] <= '6') {
				dp[i+1] += dp[i-1]
			}
		}
	}
	return dp[n]
}

/*
* 还好
 */
