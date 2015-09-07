require 'board'

describe Board do

  let(:ship) {instance_double('Ship', :position => 'C2')}

  it "has no ships when created" do
    board = Board.new
    expect(board.ships).to eq []
  end

  it "can have a ship" do
    subject.place ship
    expect(subject.ships).to include ship
  end

  it "knows ships positions" do
    subject.place ship
    expect(subject.ships_positions).to include 'C2'
  end


end