require 'DockingStation.rb'

describe DockingStation do
  it 'responds to the method "release_bike"' do
    expect(subject).to respond_to(:release_bike)
  end

#  it 'creates a bike' do
#      bike = subject.release_bike
#      expect(bike).to be_working   #this wont work now because release_bike doesnt create a new instance of bike class, it just gives us the bike we've already created when we docked
#end

describe '#release_bike' do   #  put a # in front when referring to an instance method

  it 'raises error when there are no bikes available' do
    expect {subject.release_bike}.to raise_error 'no bikes available'
  end
  it 'releases a bike' do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.release_bike).to eq bike  # release the bike we docked
   end

end


  it 'responds to the method "dock_bike"' do
    expect(subject).to respond_to(:dock_bike).with(1).argument
end
it 'docks a bike' do
  bike = Bike.new
  expect(subject.dock_bike(bike)).to eq bike
end

it 'responds to the method "bike"' do # this will return to use a stored bike
  expect(subject).to respond_to(:bike)
end
it 'shows us a bike' do
  bike = Bike.new
  subject.dock_bike(bike)
  expect(subject.bike).to eq bike
end

end
