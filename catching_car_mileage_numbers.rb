# https://www.codewars.com/kata/52c4dd683bfd3b434c000292

def is_interesting(number, awesome_phrases)
  return 1 if number == 98 || number == 99
  return 0 if number < 100
  return 2 if check_loop(number, awesome_phrases)
  2.times do |i|
    return 1 if check_loop(number + (i + 1), awesome_phrases)
  end
  return
end

def check_loop(number, awesome_phrases)
  awesome_phrases_check(number, awesome_phrases) ||
  same_number_check(number) ||
  number_followed_zeros_check(number) ||
  palindrome_check(number) ||
  incrementing_check(number) ||
  decrementing_check(number)
end

def awesome_phrases_check(number, awesome_phrases)
  awesome_phrases.include?(number)
end

def same_number_check(number)
  number.to_s.chars.uniq.count == 1
end

def number_followed_zeros_check(number)
  !number.to_s.chars.drop(1).any? { |n| n != "0" }
end

def palindrome_check(number)
  number.to_s === number.to_s.reverse
end

def incrementing_check(number)
  number = number.to_s.chars
  number.pop if number.last == "0"
  sequential_check(number)
end

def decrementing_check(number)
  number = number.to_s.chars
  number.pop if number.last == "0"
  sequential_check(number.reverse)
end

def sequential_check(array)
  array.map! { |n| n.to_i }
  (array.length - 1).times do |i|
    return false if array[i] + 1 != array[i + 1]
  end
  return true
end

    p is_interesting(3, [1337, 256])
    p is_interesting(1336, [1337, 256])
    p is_interesting(1337, [1337, 256])
    p is_interesting(11208, [1337, 256])
    p is_interesting(11209, [1337, 256])
    p is_interesting(11211, [1337, 256])
