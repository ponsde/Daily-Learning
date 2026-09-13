package GridDFS

func closedIsland(grid [][]int) int {
	dirs := [][]int{{0, 1}, {0, -1}, {1, 0}, {-1, 0}}
	m, n := len(grid), len(grid[0])
	var dfs func(i, j int) bool
	dfs = func(i, j int) bool {
		if i < 0 || i >= m || j < 0 || j >= n {
			return false
		}
		res := true
		if grid[i][j] == 1 {
			return res
		}
		grid[i][j] = 1
		for _, dir := range dirs {
			x := i + dir[0]
			y := j + dir[1]
			res = dfs(x, y) && res
		}
		return res
	}

	ans := 0
	for i, row := range grid {
		for j := range row {
			if grid[i][j] == 0 {
				if dfs(i, j) == true {
					ans += 1
				}
			}
		}
	}
	return ans
}

/*
* 咋说呢，不算很难，就是需要注意要让 dfs 跑完整，如果是 res && dfs 这样，如果 res 为 false，那后边的 dfs 就不会跑，需要注意一下
 */
