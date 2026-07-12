package Constrained_number_of_partitions

func checkPartitioning(s string) bool {
	n := len(s)
	preS := make([][]bool, n)
	for i := range preS {
		preS[i] = make([]bool, n)
		for j := range preS[i] {
			preS[i][j] = true
		}
	}
	for i := n - 2; i >= 0; i-- {
		for j := i + 1; j < n; j++ {
			preS[i][j] = s[i] == s[j] && preS[i+1][j-1]
		}
	}
	dp := make([]bool, n)
	for i := range dp {
		dp[i] = preS[0][i]
	}

	for k := 1; k < 3; k++ {
		for i := n - 1; i >= k; i-- {
			res := false
			for j := k; j <= i; j++ {
				res = res || (dp[j-1] && preS[j][i])
			}
			dp[i] = res
		}
	}
	return dp[n-1]
}

/*
* 跟上一题差不多，就是将 k  组变成了 3 组
 */
