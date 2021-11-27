# https://www.codewars.com/kata/54a91a4883a7de5d7800009c

def increment_string(string)
  string.sub(/[0-9]*$/) { |number| number.empty? ? 1 : number.succ }
end
