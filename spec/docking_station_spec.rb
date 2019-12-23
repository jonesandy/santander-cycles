require 'docking_station'

describe DockingStation do

  let(:station) { DockingStation.new }

  it 'responds to #release_bike' do
    expect(station).to respond_to(:release_bike)
  end
end
