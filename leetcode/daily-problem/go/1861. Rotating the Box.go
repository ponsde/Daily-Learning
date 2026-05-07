package dailyproblem

func rotateTheBox(boxGrid [][]byte) [][]byte {
	m := len(boxGrid)
	n := len(boxGrid[0])
	sl := make([][]byte, 0, m)
	for _, row := range boxGrid {
		t := make([]byte, 0, n)
		for range n {
			t = append(t, '.')
		}
		cnt := 0
		for j, v := range row {
			if v == '#' {
				cnt += 1
			}
			if v == '*' || j == n-1 {
				off := 0
				if v == '*' {
					t[j] = '*'
					off = 1
				}
				for k := j - off; k >= 0 && cnt > 0; k -= 1 {
					t[k] = '#'
					cnt -= 1
				}
			}
		}
		sl = append(sl, t)
	}

	ans := func(g [][]byte) [][]byte {
		m := len(g[0])
		n := len(g)
		ans := make([][]byte, m)
		for i := range m {
			ans[i] = make([]byte, n)
		}
		for i, row := range g {
			for j := range row {
				ans[j][n-i-1] = g[i][j]
			}
		}
		return ans
	}(sl)
	return ans
}

/*
* 就类似栈，历遍到底或者障碍前储存个数，然后挨个摆上去
 */
