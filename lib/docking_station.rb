require_relative 'bike'
# docks and releases bikes to users
class DockingStation
  attr_reader :bike

  def release_bike
    raise 'No bikes available' unless @bike

    @bike
  end

  def dock(bike)
    raise 'Docking station full' if @bike

    @bike = bike
  end
end
