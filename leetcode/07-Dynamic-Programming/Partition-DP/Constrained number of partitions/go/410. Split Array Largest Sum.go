package Constrained_number_of_partitions

import "math"

func splitArray(nums []int, k int) int {
	n := len(nums)
	s := make([]int, n+1)
	for i := range nums {
		s[i+1] = s[i] + nums[i]
	}

	dp := make([]int, n+1)
	for i := range dp {
		dp[i] = s[i]
	}

	for i := 2; i <= k; i++ {
		for j := n; j >= i; j-- {
			res := math.MaxInt
			for m := i - 1; m < j; m++ {
				cost := max(dp[m], s[j]-s[m])
				res = min(res, cost)
			}
			dp[j] = res
		}
	}
	return dp[n]
}

/*
* 跟3599没啥区别，用逆序1维空间
 */
