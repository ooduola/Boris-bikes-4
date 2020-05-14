
require './lib/docking_station.rb'

describe DockingStation do
    it {is_expected.to respond_to(:release_bike)}
    it 'release_bike' do
        bike = subject.release_bike
        expect(bike).to be_working
    end
    it 'responds to dock_bike' do
        expect(subject).to respond_to(:dock_bike)
    end
end
