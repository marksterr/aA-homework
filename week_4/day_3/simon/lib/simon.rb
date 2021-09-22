class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over == true
      take_turn
    end
    game_over_message
  end

  def take_turn
    add_random_color
    show_sequence
    guess = require_sequence
  end

  def show_sequence
    @seq.each {|e| puts e }
  end

  def require_sequence

  end

  def add_random_color
    i = rand(0..3)
    @seq << Simon::COLORS[i]
  end

  def round_success_message

  end

  def game_over_message
    puts "Game over!"
  end

  def reset_game

  end
end
