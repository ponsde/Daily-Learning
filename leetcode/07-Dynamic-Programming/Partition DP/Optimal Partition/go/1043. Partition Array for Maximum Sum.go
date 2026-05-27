package Optimal_Partition

import "math"

func maxSumAfterPartitioning(arr []int, k int) int {
	n := len(arr)
	dp := make([]int, n)
	for i := range arr {
		mx := math.MinInt
		res := math.MinInt
		for l := i; l >= 0 && l > i-k; l-- {
			off := i - l + 1
			mx = max(mx, arr[l])
			t := off * mx
			if l > 0 {
				t += dp[l-1]
			}
			res = max(res, t)
		}
		dp[i] = res
	}
	return dp[n-1]
}

/*
* 还好，从当前位置往前走，同时记录最大值
* dp 中存储着前面所有可能的最大的情况
 */
