def stock_picker(prices)
  return prices if prices.empty?
  raise ArgumentError if prices.length == 1
  result = [] 
  biggest_diff = prices[1] - prices[0]
  prices[1...-1].each_with_index do |el1, idx1|
    prices[idx1+1..-1].each_with_index do |el2, idx2|
      if el2 - el1 > biggest_diff 
        biggest_diff = el2 - el1 
        result = [idx1, idx2+idx1+1]
      end 
    end 
  end
  result 
end 
