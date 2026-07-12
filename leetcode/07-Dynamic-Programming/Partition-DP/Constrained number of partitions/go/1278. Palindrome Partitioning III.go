package Constrained_number_of_partitions

import "math"

func palindromePartition(s string, k int) int {
	n := len(s)
	ct := make([][]int, n)
	for i := range ct {
		ct[i] = make([]int, n)
	}
	for i := n - 1; i >= 0; i-- {
		for j := i + 1; j < n; j++ {
			var res int
			if s[i] == s[j] {
				res = 0
			} else {
				res = 1
			}
			ct[i][j] = res + ct[i+1][j-1]
		}
	}

	dp := make([]int, n)
	for i := 0; i < n; i++ {
		dp[i] = ct[0][i]
	}
	for i := 1; i < k; i++ {
		for j := n - 1; j >= i; j-- {
			res := math.MaxInt
			for m := i; m <= j; m++ {
				res = min(res, dp[m-1]+ct[m][j])
			}
			dp[j] = res
		}
	}
	return dp[n-1]
}

/*
* 咋说呢，有种糊里糊涂做出来的感觉
* 先把回文子串的l、r间的需要修改个数算出来
* 然后就按照国区的样子弄就行
 */
