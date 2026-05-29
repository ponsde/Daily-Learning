package GridDFS

func surfaceArea(grid [][]int) int {
	dirs := [][]int{{0, 1}, {0, -1}, {1, 0}, {-1, 0}}
	m, n := len(grid), len(grid[0])

	ans := 0

	for i, row := range grid {
		for j := range row {
			res := 0
			if grid[i][j] > 0 {
				res = 2 + 4*grid[i][j]
			}
			for _, dir := range dirs {
				x := i + dir[0]
				y := j + dir[1]
				if x < 0 || x >= m || y < 0 || y >= n {
					continue
				}
				res -= min(grid[i][j], grid[x][y])
			}
			ans += res
		}
	}
	return ans
}

/*
* 对于每一根柱子，减去他附近贴着的柱子的二者的min就行
 */
