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
