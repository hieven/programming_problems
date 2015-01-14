def lucky_steak(daily_winnings)
  sum  = start = tmp_start = stop = 0
  max  = daily_winnings[0]

  daily_winnings.map.with_index do |val, i|
    if sum > 0
      sum += val
    else
      sum = val
      tmp_start = i
    end
    if max < sum
      max = sum
      stop = i
      start = tmp_start
    end
  end

  daily_winnings[start..stop]

end
daily_winnings_collection = []
# 7   start 1 stop  3
daily_winnings_collection << [-1, 5, -3, 5, -10, 2, 2, 2]
# -1  start 0 stop  0
daily_winnings_collection << [-1, -2, -3, -4]
# 5   start 3 stop  5
daily_winnings_collection << [4, -1, -3, 2, 1, 2, -3]
# -1  start 3 stop  3
daily_winnings_collection << [-4, -3, -2, -1]
# -1  start 1 stop  1
daily_winnings_collection << [-4, -1, -2, -3]
# 5   start 0 stop  2
daily_winnings_collection << [2, 1, 2, -3, -2, -1, 4]

for cur in daily_winnings_collection
  puts "#{lucky_steak(cur)}"
end
