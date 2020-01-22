def towerBuilder(n_floors)
  tower = []
  n_floors.times do |i|
    space = " " * (n_floors - (i + 1))
    astric = "*" * (1 + (i * 2))
    tower << "#{space}#{astric}#{space}"
  end
  return tower
end

towerBuilder(1)
towerBuilder(2)
towerBuilder(3)

