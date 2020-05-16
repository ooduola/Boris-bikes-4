require 'bike'

describe Bike do 
  it { is_expected.to respond_to(:working?) }

  it 'reponds to #report_broken' do
  expect(subject).to respond_to(:report_broken)
  end
end
