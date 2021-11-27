# https://www.codewars.com/kata/5287e858c6b5a9678200083c

def narcissistic?(value)
  if value.to_s.split('').map { |e| e.to_i ** value.to_s.length }.reduce(:+) == value
    return true
  end
  return false
end
