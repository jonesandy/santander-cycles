require 'docking_station'

describe DockingStation do

  let(:station) { DockingStation.new }

  it 'responds to #release_bike' do
    expect(station).to respond_to(:release_bike)
  end

  it 'releases a working bike' do
    bike = station.release_bike
    expect(bike).to be_working
  end

end
