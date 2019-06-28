require 'pry'
require_relative 'Bike'
class DockingStation
  attr_reader :bike
  #eq to...
  # def bike
  #   @bike
  # end
  attr_reader :capacity
  attr_reader :dock 
  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @dock = []
    @capacity = capacity
  end

  def release_bike
    @dock.empty? ? raise("no bikes available") : check
  end

  def dock_bike(bike)
    raise "docking station full" if full?      #@dock.count >= 20
    @dock.push(bike)
  end

  def bike
    @dock
  end

  private

  def full?
    @dock.count >= @capacity
  end

  def check
    @dock[-1].broken ? raise("Error: cannot release a broken bike") : @dock.pop
  end

  #def stored_bike
  #@bike
  #end
end
#binding.pry