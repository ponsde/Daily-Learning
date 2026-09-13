package dailyproblem

import "math/bits"

func largestOverlap(img1 [][]int, img2 [][]int) int {
	n := len(img1)
	type Point struct {
		x, y int
	}
	var a, b []Point
	for i, row := range img1 {
		for j := range row {
			if img1[i][j] == 1 {
				a = append(a, Point{i, j})
			}
			if img2[i][j] == 1 {
				b = append(b, Point{i, j})
			}
		}
	}

	cnt := make([][]int, 2*n-1)
	for i := range cnt {
		cnt[i] = make([]int, 2*n-1)
	}
	offset := n - 1
	ans := 0
	for _, p1 := range a {
		for _, p2 := range b {
			dx := p1.x - p2.x + offset
			dy := p1.y - p2.y + offset
			cnt[dx][dy] += 1
			ans = max(ans, cnt[dx][dy])
		}
	}

	return ans
}

/*
* 比较符合直觉的思路，找出 dx、dy，也就是每一个 1 到对应 1 所需要的 dx、dy，然后计数 dx、dy 相同的个数
* 虽然是 On4，但是数据 n <= 30，所以可以用，不要被下注
 */

func largestOverlap2(img1 [][]int, img2 [][]int) int {
	n := len(img1)
	a := make([]uint32, n)
	b := make([]uint32, n)
	for i, row := range img1 {
		for j := range row {
			if img1[i][j] == 1 {
				a[i] |= 1 << (n - 1 - j)
			}
			if img2[i][j] == 1 {
				b[i] |= 1 << (n - 1 - j)
			}
		}
	}
	ans := 0
	for dy := -(n - 1); dy <= n-1; dy += 1 {
		for dx := -(n - 1); dx <= n-1; dx += 1 {
			cnt := 0
			for r := range n {
				tr := r + dy
				if tr < 0 || tr >= n {
					continue
				}
				var ta uint32
				if dx > 0 {
					ta = a[r] >> dx
				} else {
					ta = a[r] << (-dx)
				}
				cnt += bits.OnesCount32(ta & b[tr])
			}
			ans = max(ans, cnt)
		}
	}
	return ans
}

/*
* 比较莽撞的 bit 位图思路
* 每一个 row 对应图，上下移动即 row 动，左右移动即 col 动
 */
