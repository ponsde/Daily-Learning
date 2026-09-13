package dp_with_state_machine

func longestSubarray(nums []int) int {
	n := len(nums)
	dp := make([][]int, n)
	for i := range dp {
		dp[i] = make([]int, 3)
	}
	dp[0][0] = 1
	dp[0][1] = 1
	ans := 1
	for i := 1; i < n; i++ {
		dp[i][0] = 1
		if nums[i] >= nums[i-1] {
			dp[i][0] = dp[i-1][0] + 1
		}

		dp[i][1] = dp[i-1][0] + 1

		dp[i][2] = 2

		if nums[i] >= nums[i-1] {
			dp[i][2] = max(dp[i][2], dp[i-1][2]+1)
		}

		if i >= 2 && nums[i] >= nums[i-2] {
			dp[i][2] = max(dp[i][2], dp[i-1][1]+1)
		}
		ans = max(ans, dp[i][1], dp[i][2])
	}
	return ans
}

/*
* 三种状态，未进行、该位置进行和该位置之前进行
 */
