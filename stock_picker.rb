def stock_picker array
  profit = 0;
  buy_and_sell = []
  day_one = 0
  day_after  = 1

  while day_one < array.length
    while day_after < array.length
      margin_check = array[day_after] - array[day_one]
      if(margin_check > profit)
        profit = margin_check
        buy_and_sell = [day_one, day_after]
      end
      day_after += 1
    end
    day_one += 1
    day_after = day_one + 1
  end

  p array
  puts "You best buy #{array[buy_and_sell[0]]} on day #{buy_and_sell[0]} and sell #{array[buy_and_sell[1]]} on day #{buy_and_sell[1]} for a profit of #{profit}"

end



stock_picker([17,3,6,9,15,8,6,1,10])
