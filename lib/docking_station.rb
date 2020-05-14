require './lib/bike'

class DockingStation
  attr_reader :station
  DEFAULT_CAPACITY = 20

   def initialize
    @station = []
   end

  def release_bike
      raise "No bike available" if empty?
      @station.pop
      Bike.new
  end

  def dock_bike(bike)
      raise "No space" if full?
      @station << bike
  end

  def show
    @station
  end 

private

  def full?
    @station.length == DEFAULT_CAPACITY
  end

  def empty?
    @station.length == 0
  end
  
end
