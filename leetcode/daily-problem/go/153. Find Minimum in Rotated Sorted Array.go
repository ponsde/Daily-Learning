package dailyproblem

func findMin(nums []int) int {
	l := 0
	r := len(nums) - 1
	for l < r {
		m := l + (r-l)/2
		if nums[m] < nums[r] {
			r = m
		} else {
			l = m + 1
		}
	}
	return nums[l]
}

/*
* 二分，但是通过对比 r 的二分
* 如果 m < r，就说明最小的在 m 及其左边
* 如果 m > r, 就说明最小的在 m + 1 及其右边
 */

func findMin2(nums []int) int {
	n := len(nums)
	l := 0
	r := n

	for l < r {
		m := l + (r-l)/2
		if nums[m] <= nums[n-1] {
			r = m
		} else {
			l = m + 1
		}
	}
	return nums[l]
}

/*
* 只和最后的数比较，如果 m 大于最后一个，说明最小的在 m 的右边
* 如果 m 小于最后一个，在左边
* 注意这里要 nums[m] <= nums[n - 1]，因为，当等于时，说明在其和其左边存在最小值
 */
