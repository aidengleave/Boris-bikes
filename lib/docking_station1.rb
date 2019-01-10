require_relative 'bike'

class DockingStation

  attr_reader :bike
  attr_writer :bike

  def initialize
    @bike
  end

  def release_bike
     if @bike == nil
      fail 'no bikes available'
     else
      @bike
     end
  end

  def dock(bike)
    @bike = bike
  end
end