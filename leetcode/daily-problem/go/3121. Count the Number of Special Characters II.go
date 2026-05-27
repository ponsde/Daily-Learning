package dailyproblem

func numberOfSpecialChars(word string) int {
	m := make(map[byte]bool)
	for i := range word {
		v := word[i]
		if v >= 'a' && v <= 'z' {
			if m[byte(v-32)] {
				m[v] = false
				continue
			}
		}
		m[v] = true
	}
	cnt := 0
	for i := byte('a'); i <= 'z'; i++ {
		if m[i] && m[byte(i-32)] {
			cnt++
		}
	}
	return cnt
}

/*
* 超烂的第一反应写法，再做做
 */

func numberOfSpecialChars2(word string) int {
	d := 0
	cnt := 0
	for i := range word {
		v := word[i]
		var offA int
		var offa int
		if v >= 'A' && v <= 'Z' {
			offA = 1 << (v - 'A')
			offa = offA << 32
		} else {
			offa = 1 << (v - 'A')
			offA = offa >> 32
		}

		if v >= 'A' && v <= 'Z' {
			d |= offA
		}

		if v >= 'a' && v <= 'z' {
			if d&offa == 0 {
				if d&offA != 0 {
					continue
				}
				d |= offa
			} else {
				if d&offA != 0 {
					d ^= offa
				}
			}
		}
	}
	for i := 0; i <= 25; i++ {
		offA := 1 << i
		offa := offA << 32
		if d&offA != 0 && d&offa != 0 {
			cnt++
		}
	}

	return cnt
}

/*
* 修了一版，用位运算
 */

func numberOfSpecialChars3(word string) int {
	state := [27]int{}
	cnt := 0
	for _, v := range word {
		x := v & 31
		if v&32 > 0 {
			if state[x] == 0 {
				state[x] = 1
			} else if state[x] == 2 {
				state[x] = -1
				cnt--
			}
		} else {
			if state[x] == 0 {
				state[x] = -1
			} else if state[x] == 1 {
				state[x] = 2
				cnt++
			}
		}
	}

	return cnt
}

/*
* 状态机，学到了，大小写的低5位是相同的，然后第6位决定大小写
 */
