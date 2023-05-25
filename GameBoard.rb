class GameBoard
    def initialize()
      @board = Array.new(3, "y"){Array.new(3, "x")}
    end
  
    def make_board()
      @board.each do |r|
        r.each do {|p| p}.join(" ")
      end
    end
    
  end