# https://www.codewars.com/kata/555624b601231dc7a400017a

def josephus_survivor(n,k)
  people = Array(1..n)
  i = -1
  until people.length == 1
    k.times do
      i += 1
      if people[i] == nil
        i = 0
      end
    end
    people.delete_at(i)
    i -= 1
  end
  return people[0]
end
