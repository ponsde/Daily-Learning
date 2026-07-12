package Constrained_number_of_partitions

func largestSumOfAverages(nums []int, k int) float64 {
	n := len(nums)
	pre := make([]float64, n+1)
	for i := range nums {
		pre[i+1] = pre[i] + float64(nums[i])
	}
	dp := make([][]float64, k+1)
	for i := 1; i <= k; i++ {
		dp[i] = make([]float64, n+1)
	}
	for i := 1; i <= n; i++ {
		dp[1][i] = pre[i] / float64(i)
	}

	for j := 2; j <= k; j++ {
		for i := j; i <= n; i++ {
			for m := j - 1; m < i; m++ {
				ave := (pre[i] - pre[m]) / float64(i-m)
				dp[j][i] = max(dp[j][i], dp[j-1][m]+ave)
			}
		}
	}
	return dp[k][n]
}

/*
* 唔似乎有点明白这种类型，因为不是规定每组几个而是最多几组
* 因此通过组为单位一次推进
 */
