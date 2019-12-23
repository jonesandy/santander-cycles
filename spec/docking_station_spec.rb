require 'docking_station'

describe DockingStation do

  let(:station) { DockingStation.new }

  before(:each) do
    @bike = Bike.new
  end
    
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
    context 'docked bike' do

      before(:each) do
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

  end

  describe '#dock' do

    it 'raises error when full' do
      station.dock(@bike)
      expect { station.dock(@bike) }.to raise_error "Station full!"
    end

  end

end
