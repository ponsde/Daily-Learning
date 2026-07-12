package GridDFS

func maxMoves(grid [][]int) int {
	dirs := [][]int{{0, 1}, {-1, 1}, {1, 1}}
	m, n := len(grid), len(grid[0])
	mem := make([][]int, m)
	for i := range mem {
		mem[i] = make([]int, n)
		for j := range mem[i] {
			mem[i][j] = -1
		}
	}
	var dfs func(i, j int) int
	dfs = func(i, j int) int {
		if mem[i][j] != -1 {
			return mem[i][j]
		}
		res := 0
		for _, dir := range dirs {
			x := i + dir[0]
			y := j + dir[1]
			if x < 0 || x >= m || y < 0 || y >= n || grid[x][y] <= grid[i][j] {
				continue
			}
			res = max(res, 1+dfs(x, y))
		}
		mem[i][j] = res
		return res
	}
	ans := 0
	for i := 0; i < m; i++ {
		ans = max(ans, dfs(i, 0))
	}
	return ans
}
