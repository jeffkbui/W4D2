require_relative "piece"

class Board

  def initialize
    @board = Array.new(8,Piece.new("NullPiece")) {Array.new(8, Piece.new("NullPiece"))}
  end
  
  def set_board
    @board[0][0] = Piece.new("Rook")
    @board[0][1] = Piece.new("Bishop")
    @board[0][2] = Piece.new("Knight")
    @board[0][3] = Piece.new("King")
    @board[0][4] = Piece.new("Queen")
    @board[0][5] = Piece.new("Knight")
    @board[0][6] = Piece.new("Bishop")
    @board[0][7] = Piece.new("Rook")
    @board[1][0] = Piece.new("Pawn")
    @board[1][1] = Piece.new("Pawn")
    @board[1][2] = Piece.new("Pawn")
    @board[1][3] = Piece.new("Pawn")
    @board[1][4] = Piece.new("Pawn")
    @board[1][5] = Piece.new("Pawn")
    @board[1][6] = Piece.new("Pawn")
    @board[1][7] = Piece.new("Pawn")

    @board[7][0] = Piece.new("Rook")
    @board[7][1] = Piece.new("Bishop")
    @board[7][2] = Piece.new("Knight")
    @board[7][3] = Piece.new("Queen")
    @board[7][4] = Piece.new("King")
    @board[7][5] = Piece.new("Knight")
    @board[7][6] = Piece.new("Bishop")
    @board[7][7] = Piece.new("Rook")
    @board[6][0] = Piece.new("Pawn")
    @board[6][1] = Piece.new("Pawn")
    @board[6][2] = Piece.new("Pawn")
    @board[6][3] = Piece.new("Pawn")
    @board[6][4] = Piece.new("Pawn")
    @board[6][5] = Piece.new("Pawn")
    @board[6][6] = Piece.new("Pawn")
    @board[6][7] = Piece.new("Pawn")
  end


  def pos(pos)
    x, y = pos
    @board[x][y]
  end

  def pos=(pos, value)
    x, y = pos
    @board[x][y] = value
  end

  def move_piece(start_pos, end_pos)
    if self.pos(start_pos) == "NullPiece"
      raise "You don't have a piece there!!"
    else
      if self.pos(end_pos).type != "NullPiece"
        raise "You can't go there!"
      else
        self.pos=(start_pos, end_pos)
      end
    end
  end

end