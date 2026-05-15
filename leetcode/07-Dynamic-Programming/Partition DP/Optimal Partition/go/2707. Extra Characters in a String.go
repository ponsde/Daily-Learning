package Optimal_Partition

func minExtraChar(s string, dictionary []string) int {
	m := make(map[string]bool)
	for _, v := range dictionary {
		m[v] = true
	}
	n := len(s)
	dp := make([]int, n+1)

	for i := range s {
		res := i + 1
		for j := 0; j <= i; j++ {
			if m[s[j:i+1]] {
				for k := 0; k <= j; k++ {
					res = min(res, dp[k]+j-k)
				}
			}
		}
		dp[i+1] = min(res, dp[i]+1)
	}
	return dp[n]
}

/*
* 哇哦竟然过了
* 先将字符串在map中存起来
* 然后历遍，对于每一个i，从左向右找可能存在的组合
* 若是有，那么再从开头到组合的头历遍，将每k的最小游离+新增游离
* 若是无，那么将i - 1对应最小游离和当前char的游离
 */
