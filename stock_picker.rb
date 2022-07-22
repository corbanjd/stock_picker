result = 0

def stock_picker(days_prices_data)
    # does not take into account days, must re-do it...
#lowest_price = days_prices.min
#highest_price= days_prices.max
#lowest_price_day = days_prices.find_index(lowest_price)
#highest_price_day = days_prices.find_index(highest_price)
#p "The lowest price is: #{lowest_price}, and could have been purchased on day #{lowest_price_day}"
#p "The highest price is: #{highest_price}, and could have been purchased on day #{highest_price_day}"
##days_prices.each_with_index {|price, index| puts index}
#result = [lowest_price_day, highest_price_day]
#p "Your profit would have been $#{highest_price} - $#{lowest_price} = $#{highest_price-lowest_price}"
#p result
buy = 0
sell = 0
profit = 0
# a way to check all posibilities with nested enumerable methods
days_prices_data.each_with_index do |buy_price, buy_day|
    days_prices_data.each_with_index do |sell_price, sell_day|
        if sell_day > buy_day 
            if  sell_price - buy_price > profit 
                    profit = sell_price-buy_price
                    buy = buy_day
                    sell = sell_day
                end
            end
        end
    end
    result = [buy, sell]
    p result
end

#index is day, value is price
#days_prices_data = [12,14,31,12,2,9,3,1,4,2,8,16,50]
days_prices_original_data = [17,3,6,9,15,8,6,1,10]
stock_picker(days_prices_original_data)