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

  it "can receive a hit on a ship" do
    subject.place ship
    subject.hit 'C2'
    expect(subject.hits).to include 'C2'
  end

  it "can recognize a missed hit" do
    subject.hit 'C1'
    expect(subject.missed_hits).to include 'C1'
  end

  it "reports missed hit when no ship at position" do
    expect(subject.hit 'C1').to eq "Missed!"
  end


end