class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @seq = []
    @game_over = false
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    round_success_message
    @sequence_length += 1
  end

  def show_sequence
    add_random_color
    puts @seq
    sleep(3)
    system("clear")
  end

  def require_sequence
    puts "PLEASE ENTER SEQUENCE. Exampe: 'red blue green yellow' "
    guess = gets.chomp
    @game_over = true if @seq.join(" ") != guess
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "SUCCESS!"
  end

  def game_over_message
    puts "GAME OVER"
  end

  def reset_game
    @sequence_length = 1
    @seq = []
    @game_over = false
  end
end
