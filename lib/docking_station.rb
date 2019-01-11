require_relative 'bike'
# docks and releases bikes to users
class DockingStation
  attr_reader :bikes
  attr_reader :capacity

  def initialize
    @bikes = []
    @capacity = 20
  end

  def release_bike
    return @bikes.pop unless @bikes.empty?
    raise 'No bikes available'

    @bikes 
  end

  def dock(bike)
    raise 'Docking station full' if @bikes.length >= @capacity

    @bikes.push(bike) unless @bikes.length >= @capacity
  end
end