class Cell
  attr_accessor :value
  def initialize
    @value = '-'
  end

end

class Board
  attr_accessor :board_cells
  def initialize
    @board_cells = Array.new(3) {Array.new(3) {Cell.new} }
    # puts @board_cells
  end
end

class Player
  @number = -1
  def initialize (num)
    puts "enter your name"
    @name = gets.chomp
    @number = num
    puts "this player number is: "+ @number.to_s
  end
end

class Game
  attr_accessor :game_board , :player1 , :player2
  def initialize
    @game_board = Board.new
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @player_turn = 0
  end
  def make_move x , y

    if @player_turn == 0
      self.game_board.board_cells[x][y].value = 'X'
    else
      self.game_board.board_cells[x][y].value = 'O'
    end
    @player_turn ^=1
  end

  def to_s
    res = ""
    for i in 0..2
      for j in 0..2
        res = res+ self.game_board.board_cells[i][j].value + " "
      end
      res= res+ "\n"
    end
    return res
  end

end
my_game = Game.new
puts "game Started"
while true do
  while 1 do
  x = gets.chomp.to_i
  y = gets.chomp.to_i
  puts x.to_s + y.to_s
  if my_game.game_board.board_cells[x][y].value == '-' && i<3 && j<3 && i>=0 && j>=0
    break
  end
  end

  my_game.make_move(x,y)
  puts my_game
end
