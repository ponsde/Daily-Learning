package dailyproblem

var dirs = [4][2]int{{0, 1}, {1, 0}, {0, -1}, {-1, 0}}

func rotateGrid(grid [][]int, k int) [][]int {
	m0 := len(grid)
	n0 := len(grid[0])

	g := make([]int, 0, (m0+n0-2)*2)

	for i := range min(m0, n0) / 2 {
		m, n := m0-i*2, n0-i*2
		x, y := i, i
		g = g[:0]
		for _, dir := range dirs {
			for range n - 1 {
				g = append(g, grid[x][y])
				x += dir[0]
				y += dir[1]
			}
			m, n = n, m
		}

		sft := k % len(g)

		g = append(g[sft:], g[:sft]...)

		j := 0
		for _, dir := range dirs {
			for range n - 1 {
				grid[x][y] = g[j]
				x += dir[0]
				y += dir[1]
				j++
			}
			m, n = n, m
		}
	}
	return grid
}

/*
* 一圈圈的弄，通过切片存下顺时针的顺序，然后根据切片的长度取余然后调整切片
* 然后历遍切片放到对应的位置
* 通过m、n之间的互换使得能通过 range n - 1完成遍历
 */
