require './lib/bike'

class DockingStation
  attr_reader :station
   def initialize
    @station = nil
   end

  def release_bike
    if @station == nil
      raise "No bike available"
    else
      @station = nil
      Bike.new
    end
  end

  def dock_bike(bike)
    if @station == nil
      @station = bike
    else
      raise "No space"
    end
  end

  def show
    @station
  end

end
