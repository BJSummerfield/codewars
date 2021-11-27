# https://www.codewars.com/kata/5266876b8f4bf2da9b000362

def likes(names)
  string = ""
  names << 'no one' if names[0] == nil
  names[0] += "," if names.length >= 3
  count = names.length - 2
  if names.length > 3
    names = names.slice(0,2)
    names << "#{count} others"
  end
  if names.length >= 2
    names.insert(-2, "and")
  end
  if names.length == 1
    names << "likes this"
  else
    names << "like this"
  end
  return names.join(" ")
end
