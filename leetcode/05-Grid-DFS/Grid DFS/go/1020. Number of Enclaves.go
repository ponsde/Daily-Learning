package GridDFS

func numEnclaves(grid [][]int) int {
	m, n := len(grid), len(grid[0])
	dirs := [][]int{{0, 1}, {0, -1}, {1, 0}, {-1, 0}}

	vis := make([][]bool, m)
	for i := range vis {
		vis[i] = make([]bool, n)
	}

	var dfs func(i, j int) (int, bool)
	dfs = func(i, j int) (int, bool) {
		res := 1
		is_can := false
		vis[i][j] = true
		for _, dir := range dirs {
			x := i + dir[0]
			y := j + dir[1]
			if x < 0 || x >= m || y < 0 || y >= n {
				is_can = true
				continue
			}
			if grid[x][y] == 0 || vis[x][y] {
				continue
			}
			del, bl := dfs(x, y)
			res += del
			is_can = is_can || bl
		}

		return res, is_can
	}
	ans := 0
	for i, row := range grid {
		for j := range row {
			if grid[i][j] == 0 || vis[i][j] {
				continue
			}
			d, b := dfs(i, j)
			if !b {
				ans += d
			}
		}
	}
	return ans
}

/*
* 想了下，res代表连接的岛屿数量，然后is_can判断是否能离开边界
 */
