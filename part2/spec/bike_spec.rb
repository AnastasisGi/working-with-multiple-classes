puts '---Bike---'

it 'returns false when broken' do
  # setup
  bike = Bike.new(status: :broken)

  # execute
  result = bike.working?

  # verify
  assert_equals(result, false)
end

it 'returns true when working' do
  # setup
  bike = Bike.new

  # execute
  result = bike.working?
  
  # verify
  assert_equals(result, true)
end
