package dailyproblem

func uniqueXorTriplets(nums []int) int {
	pre := make([]bool, 2048)
	ans := make([]bool, 2048)
	n := len(nums)
	for i := 0; i < n; i++ {
		for j := 0; j < i; j++ {
			pre[nums[i]^nums[j]] = true
		}
	}
	pre[0] = true
	for _, k := range nums {
		for i, v := range pre {
			if !v {
				continue
			}
			ans[k^i] = true
		}
	}
	cnt := 0
	for i := range ans {
		if ans[i] {
			cnt++
		}
	}
	return cnt
}

/*
* 如果直接三重循环基本上就超时了
* 这里通过存储状态，去重，这样就能降低复杂度，避免第三个数对前面的每一个 i j 结果进行计算
* 因为是异或，可以得到上限，通过数组而不是 map 来减少时间消耗
 */
