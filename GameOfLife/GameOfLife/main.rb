require_relative 'board'
require_relative 'board_console_visualizer'


puts "Hello World"

b = BoardConsoleVisualizer.new
#b.display_current_state_of_board

c = Cell.new(1,2)
puts c.inspect

#f = Hash.new
#puts f.length

b = Board.new
b.add_cell(2,3)
b.add_cell(2,3)
b.add_cell(3,2)
b.add_cell(5,7)
b.remove_cell(5,7)

puts b.print_current_state




