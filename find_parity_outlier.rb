# https://www.codewars.com/kata/5526fc09a1bbd946250002dc

def find_outlier(integers)
 a = integers.map { |e| e.even? }
 a.each_with_index { |x,i| return integers[i] if a.count(x) == 1 }
end
