package GridDFS

func countIslands(grid [][]int, k int) int {
	dirs := [4][2]int{{0, 1}, {0, -1}, {1, 0}, {-1, 0}}
	m, n := len(grid), len(grid[0])

	var dfs func(x0, y0 int) int
	dfs = func(x0, y0 int) int {
		sz := grid[x0][y0]
		grid[x0][y0] = 0
		for _, dir := range dirs {
			x := x0 + dir[0]
			y := y0 + dir[1]
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
			if grid[i][j] == 0 {
				continue
			}
			t := dfs(i, j)
			if t%k == 0 {
				ans++
			}
		}
	}
	return ans
}
