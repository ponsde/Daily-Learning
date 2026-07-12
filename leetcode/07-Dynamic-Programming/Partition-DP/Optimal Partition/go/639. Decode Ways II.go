package Optimal_Partition

const MOD = 1000_000_007

func numDecodings(s string) int {
	n := len(s)
	dp := make([]int, n+1)
	dp[0] = 1
	for i := range s {
		if s[i] >= '1' && s[i] <= '9' {
			dp[i+1] = (dp[i+1] + dp[i]) % MOD
		}
		if s[i] == '*' {
			dp[i+1] += dp[i] * 9 % MOD
		}
		if i > 0 {
			if s[i-1] == '1' {
				if s[i] == '*' {
					dp[i+1] += dp[i-1] * 9 % MOD
				} else {
					dp[i+1] = (dp[i+1] + dp[i-1]) % MOD
				}
			} else if s[i-1] == '2' {
				if s[i] >= '0' && s[i] <= '6' {
					dp[i+1] = (dp[i+1] + dp[i-1]) % MOD
				} else if s[i] == '*' {
					dp[i+1] += dp[i-1] % MOD * 6
				}
			} else if s[i-1] == '*' {
				if s[i] == '*' {
					dp[i+1] += dp[i-1] * 15 % MOD
				} else if s[i] >= '0' && s[i] <= '6' {
					dp[i+1] += dp[i-1] * 2 % MOD
				} else if s[i] >= '7' && s[i] <= '9' {
					dp[i+1] = (dp[i+1] + dp[i-1]) % MOD
				}
			}
		}
	}

	return dp[n] % MOD
}

/*
* 当你确定 * 号对应的不是 + 可能性而是 * 可能性就可以做出来了
 */
