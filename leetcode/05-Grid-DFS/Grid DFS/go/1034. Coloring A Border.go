package GridDFS

func colorBorder(grid [][]int, row int, col int, color int) [][]int {
	dirs := [][]int{{0, 1}, {0, -1}, {-1, 0}, {1, 0}}

	m, n := len(grid), len(grid[0])

	ans := make([][]int, m)
	for i := range ans {
		ans[i] = make([]int, n)
		copy(ans[i], grid[i])
	}

	vis := make([][]bool, m)
	for i := range vis {
		vis[i] = make([]bool, n)
	}

	var dfs func(i, j, c int)
	dfs = func(i, j, c int) {
		vis[i][j] = true

		for _, dir := range dirs {
			x := i + dir[0]
			y := j + dir[1]
			if x < 0 || x >= m || y < 0 || y >= n || grid[x][y] != c {
				ans[i][j] = color
				continue
			}
			if vis[x][y] {
				continue
			}
			dfs(x, y, c)
		}
	}
	dfs(row, col, grid[row][col])

	return ans
}

/*
* 注意需要copy一个新的切片来弄，不然grid改了也连锁出问题
 */
