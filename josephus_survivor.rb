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

p josephus_survivor(8,3)#,4)
josephus_survivor(11,19)#,10)
josephus_survivor(1,300)#,1)
josephus_survivor(14,2)#,13)
josephus_survivor(100,1)#,100)
