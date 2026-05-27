package dailyproblem

func findMin3(nums []int) int {
	n := len(nums)
	l := 0
	r := n - 1
	for l < r {
		m := l + (r-l)/2
		if nums[m] == nums[r] {
			r--
		} else if nums[m] > nums[r] {
			l = m + 1
		} else {
			r = m
		}
	}
	return nums[l]
}

/*
* 左闭右开、左开右开的不会...
* 若是 ==，就需要考虑是在左区间还是右区间
* 那么何不将 r--，再重新考虑呢
* 若是 r 对应的是最小值，m又==r，说明最小值不止一个，那去掉没事
* 如果 r 对应的不是最小值，那么去掉就更没事了
 */
