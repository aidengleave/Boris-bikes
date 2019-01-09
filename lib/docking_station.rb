require_relative 'bike'

class DockingStation

  attr_reader :bike
  attr_writer :bike

  def initialize
    @bikes = nil
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end
end