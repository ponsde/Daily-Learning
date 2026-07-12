package Constrained_number_of_partitions

import "math"

func minXor(nums []int, k int) int {
	n := len(nums)
	dp := make([][]int, k+1)
	for i := range dp {
		dp[i] = make([]int, n+1)
		for j := range dp[i] {
			dp[i][j] = math.MaxInt
		}
	}
	s := make([]int, n+1)
	for i := range nums {
		s[i+1] = s[i] ^ nums[i]
	}
	for i := 1; i <= n; i++ {
		dp[1][i] = s[i]
	}
	for i := 2; i <= k; i++ {
		for j := i; j <= n; j++ {
			for m := i - 1; m < j; m++ {
				cost := max(dp[i-1][m], s[j]^s[m])
				dp[i][j] = min(dp[i][j], cost)
			}
		}
	}

	return dp[k][n]
}

/*
* 啊啊啊啊啊，好久没刷题脑子都快生锈了
* j为数组的右端点，然后m从左到右缩圈
* 不用担心数组个数不满足，因为j从i开始、m从i-1开始，对于每一个k，都默认最前端的那几个进去了
* 所以铁定满足数组个数的
 */

func minXor2(nums []int, k int) int {
	n := len(nums)
	dp := make([]int, n+1)
	for i := range dp {
		dp[i] = math.MaxInt
	}
	s := make([]int, n+1)
	for i := range nums {
		s[i+1] = s[i] ^ nums[i]
	}
	for i := 1; i <= n; i++ {
		dp[i] = s[i]
	}
	for i := 2; i <= k; i++ {
		for j := n; j >= i; j-- {
			res := math.MaxInt
			for m := i - 1; m < j; m++ {
				cost := max(dp[m], s[j]^s[m])
				res = min(res, cost)
			}
			dp[j] = res
		}
	}

	return dp[n]
}

/*
* 改成一维了
* 为什么倒序？因为倒叙覆盖的是后边的，而正序覆盖的是前边的，而后续会用到前边的值，因此倒叙可以1维空间
 */
