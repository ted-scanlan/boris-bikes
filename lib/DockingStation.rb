class DockingStation
  attr_reader :bike
def release_bike
raise "no bikes available" unless @bike
@bike 
end
def dock_bike(bike)
  @bike = bike
end
#def bike
#  @bike
#end
end
