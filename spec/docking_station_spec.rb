
require './lib/docking_station.rb'

describe DockingStation do
subject(:docking_station) { described_class.new }

    it {is_expected.to respond_to(:release_bike)}
    #it 'release_bike' do
        #bike = subject.release_bike
        #expect(bike).to be_working
  #  end
    describe '#release_bike' do
        it 'releases a bike' do
            docking_station.dock_bike(Bike.new)
            expect(docking_station.release_bike).to be_instance_of(Bike)
        end
    end

    it 'responds to dock_bike' do
        expect(DockingStation.new).to respond_to(:dock_bike).with(1).argument
    end

    it 'responds to show' do
        expect(subject).to respond_to (:show)
    end

    it 'raise an error when asked to release bike in an empty station' do
    expect { DockingStation.new.release_bike }.to raise_error
    end

    it 'raise an error when asked to dock a bike in a full station' do
      docking_station.dock_bike(Bike.new)
    expect { docking_station.dock_bike(Bike.new) }.to raise_error ("No space")
    end

end
