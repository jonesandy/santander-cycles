require 'bike'

describe Bike do
  
  let(:bike) { Bike.new }

  it { is_expected.to respond_to :working? }

  context 'broken bike' do

    it 'reports broken bike' do
      bike.report_broken

      expect(bike).not_to be_working
    end

  end

end
