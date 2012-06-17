require 'thread'

# Board. Place where game happens.
class Board
  
  # Current state of cells on board. A HashSet is a collection that contains no duplicate elements.
  @current_state = nil
  
  # Temporary HashSet used to checking if new cell should be born.
  @tmp_checked_cell = nil
  
  # Temporary queue used to collect all cells which will be born in next state. LinkedList use FIFO.
  @next_state_give_life = nil
  
  # Temporary queue used to collect all cells which will be kill in next state.
  @next_state_kill_life = nil
  
  # Counter of method run at one stage.
  attr_reader :counter_method_give_life_to_neighbours_if_possible;
  
  # Constructor
  def initialize
    @counter_method_give_life_to_neighbours_if_possible = 0;
    @current_state = Hash.new
    @tmp_checked_cell = Hash.new
    @next_state_give_life = Queue.new
    @next_state_kill_life = Queue.new
  end
  
  # Add new cell to board if it isn't there.
  # @param x
  # @param y
  def add_cell(x, y)
    @current_state[@current_state.length] = (Cell.new(x, y))
  end
  
  # Remove cell from board.
  # @param x
  # @param y
  def remove_cell(x, y)
    @current_state.delete_if {|key, value| value == Cell.new(x, y) }
  end
  
  def print_current_state
    @current_state.to_s
  end
  
end