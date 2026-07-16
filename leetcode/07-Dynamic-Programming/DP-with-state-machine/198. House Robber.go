package dp_with_state_machine

func rob(nums []int) int {
	n := len(nums)
	dp := make([]int, n+2)
	for i := range nums {
		dp[i+2] = max(dp[i+1], dp[i]+nums[i])
	}
	return max(dp[n], dp[n+1])
}

/*
* 需要至少隔一家，那么就是最后一家或者倒数第二家
 */
