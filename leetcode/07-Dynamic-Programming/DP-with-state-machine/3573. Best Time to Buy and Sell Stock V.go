package dp_with_state_machine

maximumProfit(prices []int, k int) int64 {

	  dp := make([][]int64, 3)
    for i := range dp {
	        dp[i] = make([]int64, k + 1)
    }
    for i := 0; i <= 2; i++ {
        for j := 0; j <= k; j++ {
	            if i == 0 && j == 0 {
                continue
            }
            dp[i][j] = math.MinInt64 / 2
        }
    }


    for _, tp := range prices {
	        p := int64(tp)
        for j := k; j >= 1; j-- {
            dp[0][j] = max(dp[0][j], dp[1][j] + p, dp[2][j] - p)
            dp[1][j] = max(dp[1][j], dp[0][j - 1] - p)
            dp[2][j] = max(dp[2][j], dp[0][j - 1] + p)
        }
    }
    var ans int64 = math.MinInt64
	    for i := 0; i <= k; i++ {
	        ans = max(ans, dp[0][i])
	    }
    return ans
}

/*
* 多了个空头，那么多加个状态，从做空到空仓
* 因为不允许同天同时买入和卖出，因此需要倒叙历变交易，这样不会出现多次交易
*/
