class Board 

  def initialize
    $a1 = 'a';
    $a2 = 'b';
    $a3 = 'c';
    $b1 = ' ';
    $b2 = ' ';
    $b3 = ' ';
    $c1 = ' ';
    $c2 = ' ';
    $c3 = ' ';
  end
end

class Player1 

  def initialize()
    @score = 0;
  end
    
  def player_choice(choice, position)
    if position == "a1"
      $a1 = choice;
    end
    if position == "a2"
      $a2 = choice;
    end
    if position == "a3"
      $a3 = choice;
    end
    if position == "b1"
      $b1 = choice;
    end
    if position == "b2"
      $b2 = choice;
    end
    if position == "b3"
      $b3 = choice;
    end
    if position == "c1"
      $c1 = choice;
    end
    if position == "c2"
      $c2 = choice;
    end
    if position == "c3"
      $c3 = choice;
    end   
  end  
end


board = Board.new
p1 = Player1.new()
p1.player_choice("X", "c3")

