stock_prices = [17,3,6,9,15,8,6,1,10]

def max_profit_pick(stock_prices)
  max_profit = [0, 0]
  for i in 0...stock_prices.length
    if stock_prices[i..-1].max - stock_prices[i] > max_profit[1] - max_profit[0]
      max_profit = [i, stock_prices[i..-1].max]
    end
  end
  # Returns the indexes of the values - ensures the index of sell value is after buy value
  return [max_profit[0], stock_prices[max_profit[0]..-1].find_index(max_profit[1]) + max_profit[0]]
end

print(max_profit_pick(stock_prices))