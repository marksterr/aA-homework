class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {[]}
    place_stones
  end

  def place_stones
    (0..12).each {|i| @cups[i] = [:stone, :stone, :stone, :stone] unless i == 6}
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 13
    raise "Starting cup is empty" if @cups[start_pos] == []
  end

  def make_move(start_pos, current_player_name)
    held_stones = []
    held_stones << @cups[start_pos].shift until @cups[start_pos].empty?
    if start_pos > 5
      o_idx = 5
    else
      o_idx = 12
    end
    i = 0
    while !held_stones.empty?
      idx = start_pos + i
      @cups[idx] << held_stones.shift #unless idx == o_idx
      i += 1
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
