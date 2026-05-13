package dailyproblem

import "math"

func minMoves(nums []int, limit int) int {
	d := make([]int, limit*2+2)

	n := len(nums)
	for i, x := range nums[:n/2] {
		y := nums[n-1-i]
		left := min(x, y) + 1
		right := max(x, y) + limit
		d[2] += 2
		d[left] -= 2

		d[left] += 1
		d[right+1] -= 1

		d[x+y] -= 1
		d[x+y+1] += 1

		d[right+1] += 2
	}
	ans := math.MaxInt
	sum := 0
	for _, x := range d[2:] {
		sum += x
		ans = min(ans, sum)
	}
	return ans
}

/*
* 感觉看了解析也不算很难
* 我们历遍i，对于每一个对数，考虑他们所能到达的所有目标
* 然后分门别类，哪些需要+2，哪些需要+1，哪些需要+0
* 然后用差分数组来处理
 */
