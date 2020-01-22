def bouncingBall(h, bounce, window)
  return  -1 if h < 0 || bounce <= 0 || bounce >= 1 || window >= h
  i = 0
  while h > window
    i += 1 if h > window
    h *= bounce
    i +=1 if h > window
  end
  return i
end
