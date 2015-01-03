def stock_picker(stock_prices)
	day = 0
	buy_day = 0
	sell_day = 0
	max_profit = -1.0./ 0 # ~= negative infinity in Ruby 2.1.4

	stock_prices.each_with_index do |buy_price, x|
	stock_prices[x+1..-1].each_with_index do |sell_price, y|
      	if(sell_price - buy_price > max_profit)
			max_profit = sell_price - buy_price
			buy_day = x
			sell_day = y+x+1 
		end

		end		

	end
	puts stock_prices.to_s
	puts "Buy on day #{buy_day.to_i } and sell on day #{sell_day.to_i } for a maximum profit of #{max_profit} (Days start at zero)."
end

data = [17,3,6,9,15,8,6,1,10]

puts stock_picker(data)