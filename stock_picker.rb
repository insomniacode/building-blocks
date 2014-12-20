def stock_picker(stock_prices)
	day = 0
	buy_day = 0
	sell_day = 0
	max_profit = 0
	last_index = stock_prices.length - 1 

	(0..last_index - 1).each do |buy_index|
		day_scanner = stock_prices[1..stock_prices.length - 1]
		current_profit = day_scanner.max - stock_prices[buy_index]
		stock_prices.each do |sell_index|
			if current_profit > max_profit
				max_profit = sell_index - buy_index
				buy_day = buy_index
				sell_day = sell_index
			end
		end		
	end
	puts "Buy when #{buy_day} and sell when #{sell_day} for a maximum profit of #{max_profit}"
end

stock_picker([17,3,6,9,15,8,6,1,10])