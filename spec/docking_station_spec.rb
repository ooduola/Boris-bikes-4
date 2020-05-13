
require './lib/docking_station.rb'

describe DockingStation do
    it {is_expected.to respond_to(:release_bike)}
    it 'release_bike' do
        station = DockingStation.new
        expect(station.release_bike).to eq Bike
    end
    it 'bike.working?' do 
        expect(Bike.working?).to eq true
    end
end
