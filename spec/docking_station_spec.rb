# spec/docking_station_spec.rb

require 'docking_station'

describe DockingStation do
	it "should respond to release_bike method call" do
		expect(subject).to respond_to :release_bike
	end
	it "should get a bike and expect the bike to be working" do 
		bike = subject.release_bike
		expect(bike).to be_working

	end

end