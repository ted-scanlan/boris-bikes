require 'DockingStation.rb'
require 'bike.rb'

describe DockingStation do

  it 'when no capacity is specified, capacity of dock will equal the default capacity' do
    expect(DockingStation.new.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  it 'when 8 is passed as an initialized argument, default capacity will be 8' do
    expect(DockingStation.new(8).capacity).to eq 8
  end

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

    it 'when the bike station is full, should raise an error to say it’s full' do
       station = DockingStation.new
       DockingStation::DEFAULT_CAPACITY.times { station.dock_bike double(:bike) }    # eq to 20.times {subject.dock_bike double(:bike)}
       expect { station.dock_bike(double(:bike)) }.to raise_error('docking station full')
     end
     
     let(:bike) { double :bike, report: true } 
     it 'raises an error if user tries to release a broken bike' do
      allow(bike).to receive(:report).and_return(true)
      station = DockingStation.new
      bike.report
      station.dock_bike(bike)
      expect { station.release_bike }.to raise_error "Error: cannot release a broken bike"
     end

    # it 'it raises error when docking station is full' do
    #   bike = double(:bike)
    #   expect {subject.default_capacity.dock_bike(bike)}.to raise_error 'docking station full'
    # end

    it 'releases a bike' do
      bike = double(:bike)
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike  # release the bike we docked
    end
  end

  describe "#dock_bike" do

  it 'responds to the method "dock_bike"' do
    expect(subject).to respond_to(:dock_bike).with(1).argument
  end

  it 'returns a docked bike stored in an array' do
    bike = double(:bike)
    expect(subject.dock_bike(bike)).to eq [bike]
  end
end

  describe '#bike' do

    it 'responds to the method "bike"' do # this will return to use a stored bike
    expect(subject).to respond_to(:bike)
    end
  end

end
