require 'DockingStation.rb'

describe DockingStation do
  it 'responds to the method "release_bike"' do
    expect(subject).to respond_to(:release_bike)
  end
    it 'creates a bike' do
      bike = subject.release_bike
      expect(bike).to be_working
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
