def stock_picker(days_prices)
lowest_price = days_prices.min
highest_price= days_prices.max
lowest_price_day = days_prices.find_index(lowest_price)
highest_price_day = days_prices.find_index(highest_price)
p "The lowest price is: #{lowest_price}, and could have been purchased on day #{lowest_price_day}"
p "The highest price is: #{highest_price}, and could have been purchased on day #{highest_price_day}"
#days_prices.each_with_index {|price, index| puts index}
result = [lowest_price_day, highest_price_day]
p "Your profit would have been $#{highest_price} - $#{lowest_price} = $#{highest_price-lowest_price}"
p result

end
#index is day, value is price
days_prices_data = [12,14,31,12,2,9,3,1,4,2,8,16,50]
stock_picker(days_prices_data)