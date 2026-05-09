package dailyproblem

import "math"

func maxValue(nums []int) []int {
	n := len(nums)
	pre := make([]int, n)
	suf := make([]int, n)
	t := math.MinInt
	for i, v := range nums {
		t = max(t, v)
		pre[i] = t
	}
	t = math.MaxInt
	for i := n - 1; i >= 0; i-- {
		v := nums[i]
		t = min(t, v)
		suf[i] = t
	}
	ans := make([]int, n)
	for i := n - 1; i >= 0; i-- {
		if i == n-1 {
			ans[i] = pre[i]
			continue
		}
		if pre[i] <= suf[i+1] {
			ans[i] = pre[i]
		} else {
			ans[i] = ans[i+1]
		}
	}
	return ans
}

/*
* 先计算前缀和后缀
* 若是前缀的最大小于后缀的最小，那么答案就是前缀的最大
* 若是大于，那么前一个能到的它也能到，那么答案就是i+1的答案
 */
