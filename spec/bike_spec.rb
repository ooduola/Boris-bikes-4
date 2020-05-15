require 'bike'

describe Bike do 
  #expect Bike.new to respond to the method working?
  it { is_expected.to respond_to(:report_working?) }

  it 'responds to #broken' do
    expect(subject).to respond_to(:broken)
  end
  
end
