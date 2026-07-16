package dp_with_state_machine

import "math"

func maxProfit(prices []int) int {
	n := len(prices)
	dp := make([][]int, n+1)
	for i := range dp {
		dp[i] = make([]int, 2)
	}
	dp[0][1] = math.MinInt
	for i := range prices {

		dp[i+1][0] = max(dp[i][0], dp[i][1]+prices[i])
		dp[i+1][1] = max(dp[i][0]-prices[i], dp[i][1])
	}
	return dp[n][0]
}

/*
* 跟上一题的区别就是加个 dp[i][0]，因为是不限制交易次数
 */
