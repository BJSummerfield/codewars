# https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1

def duplicate_count(text)
  text = text.downcase
  return text.split("").find_all {|e| text.rindex(e) != text.index(e) }.uniq.length
end
