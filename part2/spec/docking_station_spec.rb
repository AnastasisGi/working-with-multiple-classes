puts '---DockingStation---'

it 'returns working bikes when there are some' do
  #setup
  bike1 = Bike.new
  bike2 = Bike.new
  bike3 = Bike.new(status: :broken)
  bikes = [bike1, bike2, bike3]
  docking_station = DockingStation.new(bikes)

  #execute
  result = docking_station.working_bikes

  #verify
  assert_equals(result, [bike1, bike2])
end

it 'returns empty array when there are none' do
  #setup
  bike1 = Bike.new(status: :broken)
  bikes = [bike1]
  docking_station = DockingStation.new(bikes)

  #execute
  result = docking_station.working_bikes

  #verify
  assert_equals(result, [])
end

it 'returns empty array when there are no bikes' do
  #setup
  bikes = []
  docking_station = DockingStation.new(bikes)

  #execute
  result = docking_station.working_bikes

  #verify
  assert_equals(result, [])
end
