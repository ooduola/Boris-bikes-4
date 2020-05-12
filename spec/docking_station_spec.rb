
require './lib/docking_station.rb'

describe DockingStation do
  it 'respond to release_bike' do
    expect(DockingStation).to respond_to(:release_bike)
  end

end
