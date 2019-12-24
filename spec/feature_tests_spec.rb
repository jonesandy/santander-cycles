require 'docking_station'

describe 'setting a capacity' do

  it 'sets a capacity of 10' do
    station = DockingStation.new(10)
    bike = Bike.new
    
    10.times { station.dock(bike) }
    expect { station.dock(bike) }.to raise_error "Station full!"
  end

end

describe 'not releasing broken bikes' do

  let(:station) { DockingStation.new() }
  let(:bike) { Bike.new }
  
  it 'should not release bike' do
    bike.report_broken
    station.dock(bike)

    expect { station.release_bike }.to raise_error "No bikes available!"
  end

  it 'should release a bike' do
    bike_broken = Bike.new
    

    bike_broken.report_broken
    station.dock(bike_broken)
    station.dock(bike)

    expect(station.release_bike).to eq(bike)
  end
  
end
