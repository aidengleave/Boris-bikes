require 'docking_station'

describe DockingStation do
    it {should respond_to(:release_bike)}
    it "should check if bike is working" do
        bike = subject.release_bike
        expect(bike).to be_working
    end
end

