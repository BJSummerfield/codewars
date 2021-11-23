def increment_string(string)
  string.sub(/[0-9]*$/) { |number| number.empty? ? 1 : number.succ }
end
