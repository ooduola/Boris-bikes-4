require './lib/bike'

class DockingStation
  attr_reader :station
   def initialize
    @station = []
   end

  def release_bike
    if @station.empty? 
      raise "No bike available"
    else
      @station.pop
      Bike.new
    end
  end

  def dock_bike(bike)
    if @station.length == 20
      raise "No space"
    else
      @station << bike
    end
  end

  def show
    @station
  end

end
