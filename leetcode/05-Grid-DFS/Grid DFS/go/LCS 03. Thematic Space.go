package GridDFS

func largestArea(grid []string) int {
	dirs := [][]int{{0, 1}, {0, -1}, {1, 0}, {-1, 0}}
	m, n := len(grid), len(grid[0])
	vis := make([][]bool, m)
	for i := range vis {
		vis[i] = make([]bool, n)
	}
	var dfs func(i, j int, c byte) int
	dfs = func(i, j int, c byte) int {
		vis[i][j] = true
		res := 1
		for _, dir := range dirs {
			x := i + dir[0]
			y := j + dir[1]
			if x < 0 || x >= m || y < 0 || y >= n || grid[x][y] != c || vis[x][y] {
				continue
			}
			res += dfs(x, y, c)
		}
		return res
	}

	for i, row := range grid {
		for j := range row {
			if vis[i][j] {
				continue
			}
			if (i == 0 || i == m-1 || j == 0 || j == n-1) && grid[i][j] != '0' {
				dfs(i, j, grid[i][j])
				continue
			}
			if grid[i][j] == '0' {
				for c := '1'; c <= '5'; c++ {
					dfs(i, j, byte(c))
				}
			}
		}
	}

	ans := 0
	for i, row := range grid {
		for j := range row {
			if vis[i][j] || grid[i][j] == '0' {
				continue
			}
			ans = max(ans, dfs(i, j, grid[i][j]))
		}
	}
	return ans
}

/*
* 对于边界并且不是走廊的先dfs一遍，然后在根据'0'dfs一遍
 */
