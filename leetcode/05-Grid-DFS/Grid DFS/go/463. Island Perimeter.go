package GridDFS

func islandPerimeter(grid [][]int) int {
	dirs := [][]int{{0, 1}, {0, -1}, {-1, 0}, {1, 0}}

	m, n := len(grid), len(grid[0])

	vis := make([][]bool, m)
	for i := range vis {
		vis[i] = make([]bool, n)
	}

	var dfs func(i, j int) int
	dfs = func(i, j int) int {
		vis[i][j] = true
		res := 4
		for _, dir := range dirs {
			x := i + dir[0]
			y := j + dir[1]
			if x < 0 || x >= m || y < 0 || y >= n || grid[x][y] == 0 {
				continue
			}
			res--
			if !vis[x][y] {
				res += dfs(x, y)
			}
		}
		return res
	}

	for i, row := range grid {
		for j := range row {
			if grid[i][j] == 1 {
				return dfs(i, j)
			}
		}
	}
	return 0
}

/*
* 一个方块4条边，旁边几个方块就减几个边
 */
