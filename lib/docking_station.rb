require_relative 'bike'

class DockingStation
	attr_reader :bikes
	DEFAULT_CAPACITY = 20

	def initialize(capacity=DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end


	def release_bike
		raise 'no bikes' if empty?
		@bikes.pop
	end


	def dock_bike(bike)
		raise 'station full' if full?
		@bikes << bike
	end

	private
	def full?
	@bikes.size >= DEFAULT_CAPACITY ? true : false
	end

	def empty?
		@bikes.empty? ? true : false
	end


end
