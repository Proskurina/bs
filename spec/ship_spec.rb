require 'ship'

describe Ship do

  it "has a position when created" do
    ship = Ship.new 'C2'
    expect(ship.position).to eq 'C2'
  end

end