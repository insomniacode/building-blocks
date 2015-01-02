def stock_picker(stock_prices)
	day = 0
	buy_day = 0
	sell_day = 0
	max_profit = 0
	last_index = stock_prices.length - 1 

	(0..last_index).each do |buy_index|
		stock_prices[1...-1].each do |sell_day|
			current_profit = stock_prices[sell_day] - stock_prices[buy_index]
			if current_profit > max_profit
				max_profit = sell_day - buy_index
				buy_day = buy_index
			end
		end		
	end
	puts "Buy when #{buy_day} and sell when #{sell_day} for a maximum profit of #{max_profit}."
end

stock_picker([17,3,6,9,15,8,6,1,10])