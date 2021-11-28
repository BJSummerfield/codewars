def next_bigger(n)
  list = n.to_s.chars.permutation.map(&:join).uniq.sort
  p list
  one_up = list.index(n.to_s) + 1
  one_up > list.length - 1 ? -1 : list[one_up].to_i
end


p next_bigger(2017)


