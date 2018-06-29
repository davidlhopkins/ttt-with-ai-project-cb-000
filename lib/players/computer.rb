module Players
  class Computer < Player
    attr_accessor :board
    def move(board)
      if board.cells[4] == " "
        "5"
      else
        "1"
      end
  end
end
