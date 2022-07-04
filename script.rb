class Board 

  def initialize
    $a1 = 'a';
    $a2 = 'b';
    $a3 = 'c';
    $b1 = 'd';
    $b2 = 'e';
    $b3 = 'f';
    $c1 = 'g';
    $c2 = 'h';
    $c3 = 'i';
  end
  def board_state
    puts " #{$a1} #{$a2} #{$a3}"
    puts " #{$b1} #{$b2} #{$b3}"
    puts " #{$c1} #{$c2} #{$c3}"
  end
end

class Player1 

  def initialize()
 
  end
    
  def player_choice(position)
    if position == "a1"
      $a1 = "X";
    end
    if position == "a2"
      $a2 = "X";
    end
    if position == "a3"
      $a3 = "X";
    end
    if position == "b1"
      $b1 = "X";
    end
    if position == "b2"
      $b2 = "X";
    end
    if position == "b3"
      $b3 = "X";
    end
    if position == "c1"
      $c1 = "X";
    end
    if position == "c2"
      $c2 = "X";
    end
    if position == "c3"
      $c3 = "X";
    end   
  end  
end

class Player2 

  def initialize()

  end
    
  def player_choice(position)
    if position == "a1"
      $a1 = "O";
    end
    if position == "a2"
      $a2 = "O";
    end
    if position == "a3"
      $a3 = "O";
    end
    if position == "b1"
      $b1 = "O";
    end
    if position == "b2"
      $b2 = "O";
    end
    if position == "b3"
      $b3 = "O";
    end
    if position == "c1"
      $c1 = "O";
    end
    if position == "c2"
      $c2 = "O";
    end
    if position == "c3"
      $c3 = "O";
    end   
  end  
end
 class Game 
  def initialize
  
  end

end


board = Board.new
board.board_state
p1 = Player1.new()
p1.player_choice("c3")
p2 = Player2.new()
p2.player_choice("a2")
board.board_state

