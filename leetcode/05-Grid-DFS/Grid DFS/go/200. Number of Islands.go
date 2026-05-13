package GridDFS

type pair struct{ x, y int }

func numIslands(grid [][]byte) int {
	dirs := [4]pair{{0, 1}, {0, -1}, {-1, 0}, {1, 0}}

	m, n := len(grid), len(grid[0])
	vis := make([][]bool, m)

	for i := range vis {
		vis[i] = make([]bool, n)
	}

	var dfs func(x0, y0 int)

	dfs = func(x0, y0 int) {
		vis[x0][y0] = true
		for _, dir := range dirs {
			x, y := x0+dir.x, y0+dir.y
			if x < 0 || x >= m || y < 0 || y >= n || grid[x][y] == '0' || vis[x][y] {
				continue
			}
			grid[x][y] = '0'
			dfs(x, y)
		}
	}
	ans := 0
	for i, row := range grid {
		for j := range row {
			if grid[i][j] == '0' {
				continue
			}
			ans += 1
			dfs(i, j)
		}
	}
	return ans
}

/*
* 简单的dfs，用的沉岛法
 */
