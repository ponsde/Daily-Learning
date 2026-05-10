package dailyproblem

func maximumJumps(nums []int, target int) int {
	n := len(nums)
	sl := make([][]int, n)
	for i := range nums {
		for j := i + 1; j < n; j++ {
			if nums[j]-nums[i] <= target && nums[j]-nums[i] >= -target {
				sl[j] = append(sl[j], i)
			}
		}
	}

	dp := make([]int, n)
	for i := range dp {
		dp[i] = -1
	}
	dp[0] = 0
	for i := range nums {
		best := -1
		for _, v := range sl[i] {
			best = max(best, dp[v])
		}
		if best < 0 {
			continue
		}
		dp[i] = best + 1
	}

	return dp[n-1]
}

/*
* 数据范围是1k，我就先第一遍先统计到j的有那几个索引
* 然后用dp来做
* 就是有点慢...
 */
