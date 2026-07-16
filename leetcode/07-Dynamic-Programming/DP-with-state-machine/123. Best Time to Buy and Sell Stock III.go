package dp_with_state_machine

maxProfit(prices []int) int {
	    n := len(prices)
    dp := make([][][]int, n + 1)
    for i := range dp {
	        dp[i] = make([][]int, 2)
	        for j := range dp[i] {
		            dp[i][j] = make([]int, 3)
		        }
	    }

    for j := 1; j <= 2; j++ {
	        dp[0][0][j] = math.MinInt / 2
	        dp[0][1][j] = math.MinInt / 2
	    }
    dp[0][1][0] = math.MinInt / 2
    for i := range prices {
	        p := prices[i]
	        dp[i + 1][0][1] = max(dp[i][0][1], dp[i][1][1] + p)
	        dp[i + 1][1][1] = max(dp[i][1][1], dp[i][0][0] - p)
	        dp[i + 1][0][2] = max(dp[i][0][2], dp[i][1][2] + p)
	        dp[i + 1][1][2] = max(dp[i][1][2], dp[i][0][1] - p)
	    }
    return max(dp[n][0][2], dp[n][0][1], dp[n][0][0])
}

/*
* 需要三维，因为既要看是否持有，也要看购买次数
* 同时状态转移每个到另一个都是两种
*/

func maxProfit(prices []int) int {
	    dp := make([][]int, 2)
	    for i := range dp {
		        dp[i] = make([]int, 3)
		    }

	    for j := 1; j <= 2; j++ {
		        dp[0][j] = math.MinInt / 2
		        dp[1][j] = math.MinInt / 2
		    }
	    dp[1][0] = math.MinInt / 2
	    for i := range prices {
		        p := prices[i]
		        dp[0][1] = max(dp[0][1], dp[1][1] + p)
		        dp[1][1] = max(dp[1][1], dp[0][0] - p)
		        dp[0][2] = max(dp[0][2], dp[1][2] + p)
		        dp[1][2] = max(dp[1][2], dp[0][1] - p)
		    }
	    return max(dp[0][2], dp[0][1], dp[0][0])
}

/*
* 不用三维也可以
* 这样就是允许在同一天卖出同时买入，题目没限制所以弄了
*/
