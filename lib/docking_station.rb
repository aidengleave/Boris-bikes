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
   if full?
    raise 'Docking station full'
  else
    @bikes << bike
  end
  end


private

def full?
 if @bikes.length >= @capacity
   true
 else
 false
end
end

end
