package dailyproblem

import (
	"container/heap"
	"math"
)

type minHeap [][]int

func (h minHeap) Len() int {
	return len(h)
}

func (h minHeap) Swap(i, j int) {
	h[i], h[j] = h[j], h[i]
}

func (h minHeap) Less(i, j int) bool {
	return h[i][0] < h[j][0]
}

func (h *minHeap) Push(x interface{}) {
	*h = append(*h, x.([]int))
}

func (h *minHeap) Pop() interface{} {
	old := *h
	n := len(old)
	x := old[n-1]
	*h = old[:n-1]
	return x
}

func minJumps(arr []int) int {
	m := make(map[int][]int)
	for i, v := range arr {
		m[v] = append(m[v], i)
	}
	n := len(arr)
	dis := make([]int, n)
	for i := range dis {
		dis[i] = math.MaxInt
	}
	dis[0] = 0

	h := &minHeap{[]int{0, 0}}

	for h.Len() > 0 {
		t := heap.Pop(h).([]int)
		d, x := t[0], t[1]
		if x == n-1 {
			break
		}
		if d > dis[x] {
			continue
		}
		arh := m[arr[x]]
		if x > 0 {
			arh = append(arh, x-1)
		}
		if x+1 < n {
			arh = append(arh, x+1)
		}
		for _, v := range arh {
			if v == x {
				continue
			}
			if dis[v] > d+1 {
				dis[v] = d + 1
				heap.Push(h, []int{dis[v], v})
			}
		}
		delete(m, arr[x])
	}
	return dis[n-1]
}

/*
* 哇趣，go 语言的堆还得自己搓
* 用 djk 做做，用 bfs 也可以
 */
