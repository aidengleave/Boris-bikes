require 'docking_station'

describe DockingStation do
  it { should respond_to(:release_bike) }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'should check if bike is working' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'should dock bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike 
  end

  it { is_expected.to respond_to(:bike) }

  it 'should show a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end