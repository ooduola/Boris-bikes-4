require 'bike'

describe Bike do 
  it 'expect bike to respond to working?' do
    expect(Bike).to respond_to(:working?)
  end
end
