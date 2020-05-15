require './lib/bike'

class DockingStation
  attr_reader :station
  #attr_reader :capacity

  DEFAULT_CAPACITY = 20

   def initialize
    @station = []
    @capacity = DEFAULT_CAPACITY
   end

  def capacity
    @capacity
  end

  def release_bike
      raise StopIteration if empty?
      @station.pop
      Bike.new
  end

  def dock_bike(bike)
      raise StopIteration if full?
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
