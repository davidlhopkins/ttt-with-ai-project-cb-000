class Board
  attr_accessor :cells, :board

  def reset!
    @cells = Array.new(9, " ")
  end

  def initialize
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def input_to_index(input)
    input.to_i - 1 

  def position(input)
    self.@cells[input_to_index(input)]
  end

  def full?
    @cells.none? {|cell| cell == " "}
  end

  def turn_count
    count = @cells.select { |cell| cell != " "}
    count.size
  end

  def taken?(input)
    position(input) != " "
  end

  def valid_move?(input)
    !taken?(input) && (1..9) === input.to_i
  end

  def update(input, player)
    @cells[input.to_i - 1] = player.token
  end

end
