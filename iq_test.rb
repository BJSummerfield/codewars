def iq_test(numbers)
  arr = numbers.split(" ").map { |n| { n => "odd"} }.map { |z| z.map { |k,v| v = 'even' if k.to_i % 2 == 0}}
  e = 0
  o = 0
  arr.each do |num|
    if num[0] == 'even'
      e += 1
    else
      o += 1
    end
  end
  if o < e
    return arr.flatten.find_index(nil) + 1
  else
    return arr.flatten.find_index('even') + 1
  end
end
