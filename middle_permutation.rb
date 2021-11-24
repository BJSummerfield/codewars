def middle_permutation(string)
  array = string.chars.sort
  if array.length.even?
    even_perm(array)
  else
    middle = array.delete_at(array.length/2)
    middle + even_perm(array)
  end
end

def even_perm(array)
  middle = array.delete_at((array.length/2)-1)
  middle + array.join("").reverse
end
