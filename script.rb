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
  def check_who_won
    if $a1 == "X" && $a2 == "X" && $a3 == "X"
      p "Player 1 won"
    end
    if $b1 == "X" && $b2 == "X" && $b3 == "X"
      p "Player 1 won"
    end
    if $c1 == "X" && $c2 == "X" && $c3 == "X"
      p "Player 1 won"
    end
    if $a1 == "X" && $b1 == "X" && $c1 == "X"
      p "Player 1 won"
    end
    if $a2 == "X" && $b2 == "X" && $c2 == "X"
      p "Player 1 won"
    end
    if $a3 == "X" && $b3 == "X" && $c3 == "X"
      p "Player 1 won"
    end
    if $a1 == "X" && $b2 == "X" && $c3 == "X"
      p "Player 1 won"
    end
    if $a3 == "X" && $b2 == "X" && $c1 == "X"
      p "Player 1 won"
    end

    if $a1 == "O" && $a2 == "O" && $a3 == "O"
      p "Player 2 won"
    end
    if $b1 == "O" && $b2 == "O" && $b3 == "O"
      p "Player 2 won"
    end
    if $c1 == "O" && $c2 == "O" && $c3 == "O"
      p "Player 2 won"
    end
    if $a1 == "O" && $b1 == "O" && $c1 == "O"
      p "Player 2 won"
    end
    if $a2 == "O" && $b2 == "O" && $c2 == "O"
      p "Player 2 won"
    end
    if $a3 == "O" && $b3 == "O" && $c3 == "O"
      p "Player 2 won"
    end
    if $a1 == "O" && $b2 == "O" && $c3 == "O"
      p "Player 2 won"
    end
    if $a3 == "O" && $b2 == "O" && $c1 == "O"
      p "Player 2 won"
    end
  end 

end


board = Board.new
board.board_state
p1 = Player1.new()
p1.player_choice("a1")
p1.player_choice("a2")
p1.player_choice("a3")
p2 = Player2.new()
p2.player_choice("c1")
p2.player_choice("c2")
p2.player_choice("c3")

board.board_state
new_game = Game.new

new_game.check_who_won
