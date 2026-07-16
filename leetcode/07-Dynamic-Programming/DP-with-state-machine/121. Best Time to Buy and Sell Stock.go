package dp_with_state_machine 

maxProfit(prices []int) int {
	     n := len(prices)
     dp := make([][]int, n + 1)
     for i := range dp {
	         dp[i] = make([]int, 2)
	     }
     dp[0][1] = math.MinInt
     for i := range prices {

	         dp[i + 1][0] = max(dp[i][0], dp[i][1] + prices[i])
	         dp[i + 1][1] = max(- prices[i], dp[i][1])
	     }
     return dp[n][0]
 }


/*
 * 妙妙滴，用 - pprices[i]，这样不回累积，就变成只买一次了
 */
