require 'DockingStation.rb'
require 'bike.rb'

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
    it 'it raises error when docking station is full' do
      bike = Bike.new
      20.times {subject.dock_bike(bike)}
      expect {subject.dock_bike(bike)}.to raise_error 'docking station full'
    end
    it 'releases a bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike  # release the bike we docked
    end

  end

  describe "#dock_bike" do

  it 'responds to the method "dock_bike"' do
    expect(subject).to respond_to(:dock_bike).with(1).argument
  end

  it 'returns a docked bike stored in an array' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq [bike]
  end

end

  it 'responds to the method "bike"' do # this will return to use a stored bike
    expect(subject).to respond_to(:bike)

  end
end
