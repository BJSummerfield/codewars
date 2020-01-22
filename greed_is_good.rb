def score(dice)
  the_score = 0
  while dice[0] != nil
    the_score = tally(dice,the_score)
  end
  return the_score
end

def tally(dice,the_score)
  multiple = true
  die = dice[0]
  if dice.count(die) >= 3
    the_score = points(die, the_score, multiple)
    3.times do
      dice.delete_at(dice.find_index(die))
    end
  else
    multiple = false
    the_score = points(die, the_score, multiple)
    dice.delete_at(dice.find_index(die))
  end
  return the_score
end

def points(die, the_score, multiple)
  a = 0
  if multiple == true
    a = 1000 if die == 1
    a = 600 if die == 6
    a = 500 if die == 5
    a = 400 if die == 4
    a = 300 if die == 3
    a = 200 if die == 2
  elsif multiple == false
    a = 100 if die == 1
    a = 50 if die == 5
  end
  return the_score += a
end
