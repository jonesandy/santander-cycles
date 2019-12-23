require 'docking_station'

describe 'setting a capacity' do

  it 'sets a capacity of 10' do
    station = DockingStation.new(10)
    bike = Bike.new
    
    10.times { station.dock(bike) }
    expect { station.dock(bike) }.to raise_error "Station full!"
  end

end
