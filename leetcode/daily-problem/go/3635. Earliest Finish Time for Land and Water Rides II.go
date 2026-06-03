package dailyproblem

import "math"

func solve(landStartTime []int, landDuration []int, waterStartTime []int, waterDuration []int) int {
	minFinsh := math.MaxInt
	for i := range landStartTime {
		minFinsh = min(minFinsh, landStartTime[i]+landDuration[i])
	}
	res := math.MaxInt
	for i := range waterStartTime {
		res = min(res, max(waterStartTime[i], minFinsh)+waterDuration[i])
	}
	return res
}

func earliestFinishTime(landStartTime []int, landDuration []int, waterStartTime []int, waterDuration []int) int {
	return min(solve(landStartTime, landDuration, waterStartTime, waterDuration),
		solve(waterStartTime, waterDuration, landStartTime, landDuration))
}

/*
* 注意这个是两个中各选一个玩完就行不用全部玩完
 */
