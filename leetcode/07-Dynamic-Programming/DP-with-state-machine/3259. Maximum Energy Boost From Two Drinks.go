package dp_with_state_machine

func maxEnergyBoost(energyDrinkA []int, energyDrinkB []int) int64 {
	n := len(energyDrinkA)
	dp := make([][]int64, n+2)
	for i := range dp {
		dp[i] = make([]int64, 2)
	}

	for i := range n {
		var ea int64 = int64(energyDrinkA[i])
		var eb int64 = int64(energyDrinkB[i])
		dp[i+2][0] = max(dp[i+1][0]+ea, dp[i][1]+ea)
		dp[i+2][1] = max(dp[i+1][1]+eb, dp[i][0]+eb)
	}
	return max(dp[n+1][0], dp[n+1][1])
}

/*
* 类似分开的打家劫舍吧
 */
