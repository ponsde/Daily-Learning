import "math"

func getCommon(nums1 []int, nums2 []int) int {
	m := make(map[int]bool)
	for _, v := range nums1 {
		m[v] = true
	}
	ans := math.MaxInt
	for _, v := range nums2 {
		if m[v] == true {
			ans = min(ans, v)
		}
	}
	if ans == math.MaxInt {
		return -1
	}
	return ans
}

/*
* 第一想法就直接map，没注意到题目里讲了非降序，再做
 */

func getCommon(nums1 []int, nums2 []int) int {
	i := 0
	j := 0
	n1 := len(nums1)
	n2 := len(nums2)

	for i < n1 && j < n2 {
		if nums1[i] == nums2[j] {
			return nums1[i]
		}
		if nums1[i] < nums2[j] {
			i++
		} else {
			j++
		}
	}

	for i < n1 {
		if nums1[i] == nums2[n2-1] {
			return nums1[i]
		}
		i++
	}
	for j < n2 {
		if nums1[n1-1] == nums2[j] {
			return nums2[j]
		}
		j++
	}

	return -1
}

/*
* 双指针做法
 */
