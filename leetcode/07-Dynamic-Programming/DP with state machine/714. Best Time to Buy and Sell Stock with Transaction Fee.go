package dp_with_state_machine

maxProfit(prices []int, fee int) int {
    sell := 0
    buy := math.MinInt / 2
    for _, p := range prices {
	        sell = max(sell, buy + p - fee)
        buy = max(buy, sell - p)
    }

    return sell
}

/*
* 多个手续费就是在买入或卖出的其中一个加个 fee 即可
*/
