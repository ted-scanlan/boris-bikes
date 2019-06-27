class DockingStation
  attr_reader :bike

def initialize
@dock = []
@DEFAULT_CAPACITY = 20
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
  if @dock.count >= @DEFAULT_CAPACITY
    return true
  else
    return false
  end

end
#def stored_bike
#@bike
#end
end
