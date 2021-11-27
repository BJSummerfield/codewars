# https://www.codewars.com/kata/525f3eda17c7cd9f9e000b39

def zero(*args)
  if args
    args = args.unshift(0).flatten
    return args[0] + args[2] if args[1] == "+"
    return args[0] - args[2] if args[1] == "-"
    return args[0] * args[2] if args[1] == "x"
    return args[0] / args[2] if args[1] == "/"
  end
  return 0
end
def one(*args)
  if args
  args = args.unshift(1).flatten
    return args[0] + args[2] if args[1] == "+"
    return args[0] - args[2] if args[1] == "-"
    return args[0] * args[2] if args[1] == "x"
    return args[0] / args[2] if args[1] == "/"
  end
  return 1
end
def two(*args)
  if args
    args = args.unshift(2).flatten
    return args[0] + args[2] if args[1] == "+"
    return args[0] - args[2] if args[1] == "-"
    return args[0] * args[2] if args[1] == "x"
    return args[0] / args[2] if args[1] == "/"
  end
  return 2
end
def three(*args)
  if args
    args = args.unshift(3).flatten
    return args[0] + args[2] if args[1] == "+"
    return args[0] - args[2] if args[1] == "-"
    return args[0] * args[2] if args[1] == "x"
    return args[0] / args[2] if args[1] == "/"
  end
  return 3
end
def four(*args)
  if args
    args = args.unshift(4).flatten
    return args[0] + args[2] if args[1] == "+"
    return args[0] - args[2] if args[1] == "-"
    return args[0] * args[2] if args[1] == "x"
    return args[0] / args[2] if args[1] == "/"
  end
  return 4
end
def five(*args)
  if args
  args = args.unshift(5).flatten
    return args[0] + args[2] if args[1] == "+"
    return args[0] - args[2] if args[1] == "-"
    return args[0] * args[2] if args[1] == "x"
    return args[0] / args[2] if args[1] == "/"
  end
  return 5
end
def six(*args)
  if args
    args = args.unshift(6).flatten
    return args[0] + args[2] if args[1] == "+"
    return args[0] - args[2] if args[1] == "-"
    return args[0] * args[2] if args[1] == "x"
    return args[0] / args[2] if args[1] == "/"
  end
  return 6
end
def seven(*args)
  if args
    args = args.unshift(7).flatten
    return args[0] + args[2] if args[1] == "+"
    return args[0] - args[2] if args[1] == "-"
    return args[0] * args[2] if args[1] == "x"
    return args[0] / args[2] if args[1] == "/"
  end
  return 7
end
def eight(*args)
  if args
    args = args.unshift(8).flatten
    return args[0] + args[2] if args[1] == "+"
    return args[0] - args[2] if args[1] == "-"
    return args[0] * args[2] if args[1] == "x"
    return args[0] / args[2] if args[1] == "/"
  end
  return 8
end
def nine(*args)
  if args
    args = args.unshift(9).flatten
    return args[0] + args[2] if args[1] == "+"
    return args[0] - args[2] if args[1] == "-"
    return args[0] * args[2] if args[1] == "x"
    return args[0] / args[2] if args[1] == "/"
  end
  return 9
end
def plus(number)
  return ["+", number]
end
def minus(number)
  return ["-", number]
end
def times(number)
  return ["x", number]
end
def divided_by(number)
  return ["/", number]
end
