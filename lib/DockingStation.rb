class DockingStation
  attr_reader :bike
def release_bike
Bike.new
end
def dock_bike(bike)
  @bike = bike
end
#def bike
#  @bike
#end
end
