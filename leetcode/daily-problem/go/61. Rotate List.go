package dailyproblem

type ListNode struct {
	Val  int
	Next *ListNode
}

func rotateRight(head *ListNode, k int) *ListNode {
	if k == 0 || head == nil {
		return head
	}
	l := 0
	t := head
	for t != nil {
		l++
		t = t.Next
	}
	if k%l == 0 {
		return head
	}
	off := l - k%l
	cur := head
	for i := 0; i < off-1; i++ {
		cur = cur.Next
	}
	newHead := cur.Next
	tail := newHead
	cur.Next = nil
	for tail.Next != nil {
		tail = tail.Next
	}
	tail.Next = head
	return newHead
}
