require 'docking_station.rb'

describe DockingStation do
  it 'bike is working' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike.working?).to be true
  end

  describe '#release_bike' do
    it 'releases docked bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'docks bike' do
      bike = Bike.new
      # expect(subject.dock(bike)).to eq bike
    end

    it 'raises an error when full' do
      needed_bikes = subject.capacity - subject.bikes.length
      needed_bikes.times {subject.dock(Bike.new)}
      expect { subject.dock(Bike.new) }.to raise_error
    end
  end
end