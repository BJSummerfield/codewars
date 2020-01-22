def duplicate_count(text)
  text = text.downcase
  return text.split("").find_all {|e| text.rindex(e) != text.index(e) }.uniq.length
end
