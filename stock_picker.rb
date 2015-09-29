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
	best_days
end

puts stock_picker([17,3,6,9,15,8,6,1,10]).to_s
puts stock_picker([])