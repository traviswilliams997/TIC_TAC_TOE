class Player1
  def initialize
    @score = 0;

  end
  def player_choice (choice, position)
   position = choice;
  end

end


#Holds functions and state of plaer positions
class Board
    attr_accessor :@a1;
  def initialize
      @a1 = ' ';
      @a2 = ' ';
      @a3 = ' ';
      @b1 = ' ';
      @b2 = ' ';
      @b3 = ' ';
      @c1 = ' ';
      @c2 = ' ';
      @c3 = ' ';
  end
end


board = Board.new
p1 = Player1.new
p @a1
p1.player_choice("X", @a1)
p @a1