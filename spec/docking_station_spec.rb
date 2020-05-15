
require './lib/docking_station.rb'

describe DockingStation do

  it 'can set capacity' do
    expect(subject.capacity).to eq capacity
  end

    it 'respond to #release_bike' do
        expect(subject).to respond_to(:release_bike)
    end

    it 'responds to dock_bike' do
        expect(subject).to respond_to(:dock_bike).with(1).argument
    end

    it 'responds to show' do
        expect(subject).to respond_to (:show)
    end

    describe '#release_bike' do
        it 'releases a bike' do
            subject.dock_bike(Bike.new)
            expect(subject.release_bike).to be_instance_of(Bike)
        end

        it 'raise specific errop when station is empty' do
            expect { subject.release_bike }.to raise_error(StopIteration)
        end
    end

    describe '#release_bike' do
        it 'raise specific error when station is full' do
            20.times { subject.dock_bike(Bike.new)}
            expect { subject.dock_bike(Bike.new) }.to raise_error(StopIteration)
        end
    end
end
