require 'bike'

describe Bike do 
  #expect Bike.new to respond to the method working?
  it { is_expected.to respond_to(:working?) }
  it { is_expected.to respond_to(:working?) }
end
