require 'docking_station'

describe DockingStation do

  let(:station) { DockingStation.new }
    
  it 'responds to #release_bike' do
    expect(station).to respond_to(:release_bike)
  end

  it 'responds to #dock' do
    expect(station).to respond_to(:dock).with(1).argument
  end


  it 'responds to #bike' do
    expect(station).to respond_to(:bike)
  end

  describe '#release_bike' do

    it 'releases a bike' do
      bike = Bike.new
      station.dock(bike)

      expect(station.release_bike).to eq(bike)
    end

    it 'releases a working bike' do
      bike = Bike.new
      station.dock(bike)

      expect(bike).to be_working
    end

    it 'raises an error when no bikes available' do
      expect { station.release_bike }.to raise_error "No bikes available!"
    end

  end

end
