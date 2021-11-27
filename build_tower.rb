# https://www.codewars.com/kata/576757b1df89ecf5bd00073b

def towerBuilder(n_floors)
  tower = []
  n_floors.times do |i|
    space = " " * (n_floors - (i + 1))
    astric = "*" * (1 + (i * 2))
    tower << "#{space}#{astric}#{space}"
  end
  return tower
end
