package dailyproblem

func canReach(arr []int, start int) bool {
	n := len(arr)

	sl := make([][]int, n)
	for i, v := range arr {
		l := i - v
		r := i + v
		if l >= 0 && l < n {
			sl[i] = append(sl[i], l)
		}
		if r >= 0 && r < n {
			sl[i] = append(sl[i], r)
		}
	}
	vis := make([]bool, n)
	var dfs func(i int) bool
	dfs = func(i int) bool {
		if vis[i] {
			return false
		}
		if arr[i] == 0 {
			return true
		}
		vis[i] = true
		ans := false
		for _, v := range sl[i] {
			ans = dfs(v)
			if ans {
				break
			}
		}
		return ans
	}

	return dfs(start)
}

/*
* 最开始想 dfs 之类的会超时用并查集，但这不是无向的而是有向的
* 然后这里用 dfs 之类的也不会超时，On的时间复杂度
* 然后其实不用预处理
 */

func canReach2(arr []int, start int) bool {
	n := len(arr)

	vis := make([]bool, n)
	var dfs func(i int) bool
	dfs = func(i int) bool {
		if i < 0 || i >= n || vis[i] {
			return false
		}
		if arr[i] == 0 {
			return true
		}
		vis[i] = true
		v := arr[i]
		ans := dfs(i-v) || dfs(i+v)

		return ans
	}

	return dfs(start)
}
