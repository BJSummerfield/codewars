# https://www.codewars.com/kata/55983863da40caa2c900004e

def next_bigger(n)
  list = n.to_s.chars.map { |e| e.to_i }
  return -1 if descending?(n, list)
  marker_index = find_marker_index(list)
  swap_at_marker(list, marker_index)
  return sort_at_swap(list,marker_index)
end

def sort_at_swap(list,marker_index)
  first_a = list.slice(0,marker_index + 1)
  second_a = get_changing_slice(list,marker_index)
  return (first_a + second_a).join.to_i
end

def swap_at_marker(list, marker_index)
  swap_index = get_swap_index(list,marker_index)
  list[marker_index], list[swap_index] = list[swap_index], list[marker_index]
end

def get_changing_slice(list,marker_index)
  return list.slice(marker_index + 1, list.length - marker_index + 1).sort
end

def get_swap_index(list,marker_index)
  sliced_array = get_changing_slice(list,marker_index)
  min_value = sliced_array.find { |v| v > list[marker_index] }
  i = marker_index + 1
  (list.length - i).times do
    return i if list[i] == min_value
    i += 1
  end
end

def find_marker_index(list)
  i = list.length - 1
  (list.length).times do
    return i - 1 if list[i] > list[i-1]
    i -= 1
  end
end

def descending?(n, list)
  list.sort.reverse.join.to_i == n
end
