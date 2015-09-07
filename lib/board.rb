class Board

  attr_reader :ships
  attr_reader :ships_positions
  attr_reader :hits
  attr_reader :missed_hits

  def initialize
    @ships = []
    @ships_positions = []
    @hits = []
    @missed_hits = []

  end

  def place(ship)
    ships << ship
    ships_positions << ship.position
  end


end
