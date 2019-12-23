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

  it 'releases a working bike' do
    bike = station.release_bike
    expect(bike).to be_working
  end
  
  it 'docks a bike' do
    bike = station.release_bike
    station.dock(bike)
    expect(station.bike).to eq(bike)
  end

end
