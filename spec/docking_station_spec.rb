require 'docking_station'

describe DockingStation do

  let(:station) { DockingStation.new }
    
  it 'responds to #release_bike' do
    expect(station).to respond_to(:release_bike)
  end

  it 'responds to #dock' do
    expect(station).to respond_to(:dock).with(1).argument
  end

  describe '#release_bike' do
    context 'docked bike' do

      before(:each) do
        @bike = double("Bike", :working? => true)
        station.dock(@bike)
      end

      it 'releases a bike' do   
        expect(station.release_bike).to eq(@bike)
      end

      it 'releases a working bike' do
        expect(@bike).to be_working
      end

    end

    it 'raises an error when no bikes available' do
      expect { station.release_bike }.to raise_error "No bikes available!"
    end

    it 'should not release broken bike' do
      bike = double("Bike", :working? => false)
      station.dock(bike)

      expect { station.release_bike}.to raise_error "No bikes available!"
    end

  end

  describe '#dock' do
    
    it 'raises error when full' do
      
      bike = double("Bike", :working? => true)

      DockingStation::DEFAULT_CAPACITY.times { station.dock(bike) }
      expect { station.dock(bike) }.to raise_error "Station full!"
    end

  end

end
