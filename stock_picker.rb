def stock_picker(stock_prices)
	if stock_prices.empty?
		return 0
	end
	best_days = []
	biggest_difference = 0
	stock_prices.each do |x|
		stock_prices.each do |y|
			if ((x - y) < biggest_difference) && (stock_prices.index(x) < stock_prices.index(y))
				best_days[0] = stock_prices.index(x)
				best_days[1] = stock_prices.index(y)
				biggest_difference = (x - y)
			end
		end
	end
	best_days.empty? ? "Sorry there were no good days to buy and sell without making a loss" : best_days
end

puts stock_picker([17,3,6,9,15,8,6,1,10]).to_s
puts stock_picker([10,15,9,22,4,19,27,9,1]).to_s
puts stock_picker([19,18,15,10,1])
puts stock_picker([])