require 'docking_station'

describe 'setting a capacity' do

  it 'sets a capacity of 10' do
    station = DockingStation.new(10)
    bike = Bike.new
    
    10.times { station.dock(bike) }
    expect { station.dock(bike) }.to raise_error "Station full!"
  end

describe 'not releasing broken bikes' do
  
  it 'should not release bike' do
    station = DockingStation.new()
    bike = Bike.new

    bike.report_broken
    station.dock(bike)

    expect { station.release_bike }.to raise_error "No bikes available!"
  end
  
end

end
