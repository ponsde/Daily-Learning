func floodFill(image [][]int, sr int, sc int, color int) [][]int {
	dirs := [][]int{{0, 1}, {0, -1}, {1, 0}, {-1, 0}}

	m, n := len(image), len(image[0])

	vis := make([][]bool, m)
	for i := range vis {
		vis[i] = make([]bool, n)
	}

	var dfs func(i, j, c int)
	dfs = func(i, j, c int) {
		vis[i][j] = true
		image[i][j] = color
		for _, dir := range dirs {
			x := i + dir[0]
			y := j + dir[1]
			if x < 0 || x >= m || y < 0 || y >= n || vis[x][y] || image[x][y] != c {
				continue
			}
			dfs(x, y, c)
		}
	}

	dfs(sr, sc, image[sr][sc])

	return image
}

/*
* 简单dfs
 */
