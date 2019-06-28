require 'pry'
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
    raise "no bikes available" if @dock.empty?
    @dock.pop
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
    if @dock.count >= @capacity
      return true
    else
      return false
    end
  end
  #def stored_bike
  #@bike
  #end
end
#binding.pry
