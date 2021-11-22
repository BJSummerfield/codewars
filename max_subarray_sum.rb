def max_sequence(arr)
  max = 0
  run = 0
  arr.each do |i|
    run = 0 if run < 0
    run += i
    max = run if run > max
  end
  max
end
