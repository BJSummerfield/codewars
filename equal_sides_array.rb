# https://www.codewars.com/kata/5679aa472b8f57fb8c000047

def find_even_index(arr)
  (arr.length).times do |i|
    l = 0
    r = 0
    arr.length.times do |j|
      if j < i
        l += arr[j]
      elsif j > i
        r += arr[j]
      end
    end
    if l == r
      return i
    end
  end
  return -1
end
