package dp_with_state_machine

maxProfit(k int, prices []int) int {
	    dp := make([][]int, 2)
    for i := range dp {
	        dp[i] = make([]int, k + 1)
	    }
    for i := 1; i <= k; i++ {
	        dp[0][i] = math.MinInt / 2
	        dp[1][i] = math.MinInt / 2
	    }
    dp[1][0] = math.MinInt / 2
    for _, p := range prices {
	        for i := 1; i <= k; i++ {
		            dp[0][i] = max(dp[0][i], dp[1][i] + p)
		            dp[1][i] = max(dp[1][i], dp[0][i - 1] - p)
		        }
	    }
    ans := math.MinInt
    for i := 0; i <= k; i++ {
	        ans = max(ans, dp[0][i])
	    }
    return ans
}

/*
* 扩展一下而已，因为是最多k次，所以历变0~k次交易次数
*/
