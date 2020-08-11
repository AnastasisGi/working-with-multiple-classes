class DockingStation
  def initialize(bikes)
    @bikes = bikes
  end

  def working_bikes
    @bikes.select(&:working?)
  end
end
