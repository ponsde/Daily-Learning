package GridDFS

import "slices"

func pondSizes(land [][]int) []int {
	dirs := [][]int{{0, 1}, {0, -1}, {1, 0}, {-1, 0}, {1, 1}, {1, -1}, {-1, 1}, {-1, -1}}
	m, n := len(land), len(land[0])
	var dfs func(i, j int) int
	dfs = func(i, j int) int {
		land[i][j] = -1
		res := 1
		for _, dir := range dirs {
			x := i + dir[0]
			y := j + dir[1]
			if x < 0 || x >= m || y < 0 || y >= n || land[x][y] != 0 {
				continue
			}
			res += dfs(x, y)
		}
		return res
	}
	ans := make([]int, 0)
	for i, row := range land {
		for j := range row {
			if land[i][j] == 0 {
				ans = append(ans, dfs(i, j))
			}
		}
	}
	slices.Sort(ans)
	return ans
}

/*
* 沉岛dfs
 */
