package dailyproblem

import "slices"

func minimumCost(cost []int) int {
	slices.Sort(cost)
	slices.Reverse(cost)
	n := len(cost)
	ans := 0
	for i := 0; i < n; i += 3 {
		a := i + 1
		b := i + 2
		if a >= n {
			ans += cost[i]
		} else if b >= n {
			ans += cost[i] + cost[a]
		} else {
			ans += cost[i] + cost[i+1]
		}
	}
	return ans
}

/*
* 原本想着顺序然后贪心，但发现应该从后往前，这样能尽可能拿大的糖果走
 */
