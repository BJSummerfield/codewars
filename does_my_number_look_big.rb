def narcissistic?(value)
  if value.to_s.split('').map { |e| e.to_i ** value.to_s.length }.reduce(:+) == value
    return true
  end
  return false
end
