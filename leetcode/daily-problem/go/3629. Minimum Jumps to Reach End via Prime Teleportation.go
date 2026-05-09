package dailyproblem

import "math"

const mx = 1_000_001

var primeFactor = [mx][]int{}

func init() {
	for i := 2; i < mx; i++ {
		if primeFactor[i] == nil {
			for j := i; j < mx; j += i {
				primeFactor[j] = append(primeFactor[j], i)
			}
		}
	}
}

func minJumps(nums []int) int {
	gp := map[int][]int{}

	for i, v := range nums {
		for _, p := range primeFactor[v] {
			gp[p] = append(gp[p], i)
		}
	}
	n := len(nums)

	vis := make([]bool, n)

	dis := make([]int, n)
	for i := 1; i < n; i++ {
		dis[i] = math.MaxInt
	}
	q := []int{0}
	for len(q) > 0 {
		i := q[0]
		if i == n-1 {
			break
		}
		q = q[1:]
		if vis[i] {
			continue
		}
		vis[i] = true
		v := nums[i]
		for _, j := range gp[v] {
			if dis[j] > dis[i]+1 {
				dis[j] = dis[i] + 1
				if vis[j] {
					continue
				}
				q = append(q, j)
			}
		}

		for t := i - 1; t <= i+1; t += 2 {
			if t < 0 || t >= n {
				continue
			}
			if dis[t] > dis[i]+1 {
				dis[t] = dis[i] + 1
				q = append(q, t)
			}
		}
		delete(gp, v)
	}

	return dis[n-1]
}

/*
 * 先弄好质数，这里弄的是每一个数的子质数
 * 然后历遍数组，每个数都有对应的子质数，我们在每一个子质数那加入该数的索引
 * 代表该子质数可以跳到该数
 * 通过map来存储质数对应的下标集合
 * 在历遍某个指数后，将该质数及其索引集合从map中删除，因为第一次历遍的时候遇到的是最小的情况
 */
