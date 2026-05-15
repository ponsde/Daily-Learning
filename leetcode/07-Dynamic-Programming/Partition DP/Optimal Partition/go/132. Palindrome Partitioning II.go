package Optimal_Partition

func check(s string) bool {
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		if s[i] != s[j] {
			return false
		}
	}
	return true
}

func minCut(s string) int {
	n := len(s)
	isPal := make([][]bool, n)
	for i := range isPal {
		isPal[i] = make([]bool, n)
	}
	for i := range s {
		for j := range s[:i+1] {
			isPal[j][i] = check(s[j : i+1])
		}
	}
	dp := make([]int, n+1)
	for i := range dp {
		dp[i] = i
	}
	for i := range s {
		for j := range s[:i+1] {
			if s[j] == s[i] && isPal[j][i] {
				dp[i+1] = min(dp[i+1], dp[j]+1)
			}
		}
	}
	return dp[n] - 1
}

/*
* 先预处理j到i是否为回文
* 然后dp按段初始化，前i个最多能分i段
* 最后将总段数-1就是分割数
 */

func minCut2(s string) int {
	n := len(s)
	isPal := make([][]bool, n)
	for i := range isPal {
		isPal[i] = make([]bool, n)
		for j := range isPal[i] {
			isPal[i][j] = true
		}
	}
	for l := n - 2; l >= 0; l-- {
		for r := l + 1; r < n; r++ {
			isPal[l][r] = s[l] == s[r] && isPal[l+1][r-1]
		}
	}

	dp := make([]int, n+1)
	for i := range dp {
		dp[i] = i
	}
	for i := range s {
		for j := range s[:i+1] {
			if s[j] == s[i] && isPal[j][i] {
				dp[i+1] = min(dp[i+1], dp[j]+1)
			}
		}
	}
	return dp[n] - 1
}

/*
* 判断回文用 dp 来，若是 l == r，那么就看 l + 1 和 r - 1
* 因此l要逆序进行，这样在计算l的时候，l + 1才是被计算过的
* 我们最开始全初始化为true防止边界情况
 */
