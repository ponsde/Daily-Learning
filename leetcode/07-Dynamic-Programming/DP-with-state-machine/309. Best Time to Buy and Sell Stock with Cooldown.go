package dp_with_state_machine

maxProfit(prices []int) int {
	    n := len(prices)
    dp := make([][]int, n + 2)
    for i := range dp {
	        dp[i] = make([]int, 2)
	    }
    dp[0][1] = math.MinInt / 2
    dp[1][1] = math.MinInt / 2
    for i, p := range prices {
	        dp[i + 2][0] = max(dp[i + 1][0], dp[i + 1][1] + p)
	        dp[i + 2][1] = max(dp[i + 1][1], dp[i][0] - p)
	    }
    return dp[n + 1][0]
}

/*
* 这里在卖出后有一天的冷却期，因此状态在买入时，需要在一天之前的卖出才能进入
* 这里 n  + 2，起始点的 0、1 作为提前量，减少考虑
*/
