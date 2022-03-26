require_relative "main.rb"

# Test each of the win conditions

# 0 row
game = Game.new
game.move("q")
game.move("a")
game.move("w")
game.move("s")
game.move("e")
puts "Test result (0 row win)"
puts game.win?(game.board)

# 1 row
game = Game.new
game.move("a")
game.move("z")
game.move("s")
game.move("x")
game.move("d")
puts "Test result (1 row win)"
puts game.win?(game.board)

# 2 row
game = Game.new
game.move("z")
game.move("a")
game.move("x")
game.move("s")
game.move("c")
puts "Test result (2 row win)"
puts game.win?(game.board)

# 0 col
game = Game.new
game.move("q")
game.move("w")
game.move("a")
game.move("s")
game.move("z")
puts "Test result (0 col win)"
puts game.win?(game.board)

# 1 col
game = Game.new
game.move("w")
game.move("e")
game.move("s")
game.move("d")
game.move("x")
puts "Test result (1 col win)"
puts game.win?(game.board)

# 2 col
game = Game.new
game.move("e")
game.move("w")
game.move("d")
game.move("s")
game.move("c")
puts "Test result (2 col win)"
puts game.win?(game.board)

# cross 1
game = Game.new
game.move("q")
game.move("w")
game.move("s")
game.move("a")
game.move("c")
puts "Test result (cross 1 win)"
puts game.win?(game.board)

# cross 2
game = Game.new
game.move("e")
game.move("w")
game.move("s")
game.move("a")
game.move("z")
puts "Test result (cross 2 win)"
puts game.win?(game.board)
