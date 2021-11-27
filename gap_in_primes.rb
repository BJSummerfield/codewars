# https://www.codewars.com/kata/561e9c843a2ef5a40c0000a4

require 'prime'

def gap (g, m, n)
  check = nil
  while m <= n do
    if m.prime?
      if check
        return [check, m] if m - check == g
      end
      check = m
    end
    m+=1
  end
  return nil
end
