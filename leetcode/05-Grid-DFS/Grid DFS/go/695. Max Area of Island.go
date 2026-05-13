package GridDFS

var dirs = [][]int{{0, 1}, {0, -1}, {1, 0}, {-1, 0}}

func maxAreaOfIsland(grid [][]int) int {
	m, n := len(grid), len(grid[0])
	vis := make([][]bool, m)
	for i := range vis {
		vis[i] = make([]bool, n)
	}

	var dfs func(x0, y0 int) int
	dfs = func(x0, y0 int) int {
		sz := 1
		grid[x0][y0] = 0
		vis[x0][y0] = true
		for _, dir := range dirs {
			x, y := x0+dir[0], y0+dir[1]
			if x < 0 || x >= m || y < 0 || y >= n || grid[x][y] == 0 {
				continue
			}

			sz += dfs(x, y)
		}
		return sz
	}

	ans := 0
	for i, row := range grid {
		for j := range row {
			if grid[i][j] == 0 || vis[i][j] {
				continue
			}
			ans = max(ans, dfs(i, j))
		}
	}
	return ans
}

/*
* 妈耶，想了半天哪错了，然后发现我用的是 '0' 而不是 0
 */
