require './lib/bike'

class DockingStation
  attr_reader :station
  def initialize
    @station
  end

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    @station = bike
  end

  def show
    @station
  end

end
