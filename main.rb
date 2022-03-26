class Game
  attr_reader :board

  def initialize
    @board = [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
    @turn = 1
  end

  def board_display
    board_formatted = @board.map { |row| row.map { |num| if num == 1 then "X" elsif num == -1 then "O" else " " end } }
    puts board_formatted[0][0] + " | " + board_formatted[0][1] + " | " + board_formatted[0][2]
    puts "----------"
    puts board_formatted[1][0] + " | " + board_formatted[1][1] + " | " + board_formatted[1][2]
    puts "----------"
    puts board_formatted[2][0] + " | " + board_formatted[2][1] + " | " + board_formatted[2][2]
  end

  def move(input)
    str = conv_keys_to_board(input)
    r = str.split(",")[0].to_i
    c = str.split(",")[1].to_i
    # puts "move was #{r}, #{c}"
    if @board[r][c] == 0
      @board[r][c] = @turn
      @turn *= -1
      return 0
    else
      puts "space already played"
      return 1
    end
  end

  def win?(board)
    case
    when (board[0].sum).abs == 3
      return true
    when (board[1].sum).abs == 3
      return true
    when (board[2].sum).abs == 3
      return true
    when (board[0][0] + board[1][0] + board[2][0]).abs == 3
      return true
    when (board[0][1] + board[1][1] + board[2][1]).abs == 3
      return true
    when (board[0][2] + board[1][2] + board[2][2]).abs == 3
      return true
    when (board[0][0] + board[1][1] + board[2][2]).abs == 3
      return true
    when (board[0][2] + board[1][1] + board[2][0]).abs == 3
      return true
    else
      return false
    end
  end

  def conv_keys_to_board(key)
    case key
    when "q"
      return "0,0"
    when "w"
      return "0,1"
    when "e"
      return "0,2"
    when "a"
      return "1,0"
    when "s"
      return "1,1"
    when "d"
      return "1,2"
    when "z"
      return "2,0"
    when "x"
      return "2,1"
    when "c"
      return "2,2"
    else return nil
    end
  end

  def play()
    i = 0
    while win?(@board) == false && i < 9
      system("clear")
      board_display()
      puts "turn number: #{i}"
      puts "enter selection on a board from <q> to <c> keys:"
      move = gets.chomp.to_s
      until move(move) == 0
        move = gets.chomp.to_s
      end
      i += 1
    end
    system("clear")
    board_display()
    if win?(@board)
      puts "#{if (@turn *= -1) == 1 then "X" else "O" end} wins!"
    else
      puts "\nGame has ended in a draw"
    end
  end
end

# Build list
# cast a move
# restrict moves to unused spots
# control whose turn it is
# view controller
# win conditions
