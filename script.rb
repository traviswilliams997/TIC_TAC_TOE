class Board 

  def initialize
    $a1 = 'a1';
    $a2 = 'a2';
    $a3 = 'a3';
    $b1 = 'b1';
    $b2 = 'b2';
    $b3 = 'b3';
    $c1 = 'c1';
    $c2 = 'c2';
    $c3 = 'c3';
  end
  def board_state
    puts " #{$a1} #{$a2} #{$a3}"
    puts " #{$b1} #{$b2} #{$b3}"
    puts " #{$c1} #{$c2} #{$c3}"
  end
  def reset_board
    $a1 = 'a1';
    $a2 = 'a2';
    $a3 = 'a3';
    $b1 = 'b1';
    $b2 = 'b2';
    $b3 = 'b3';
    $c1 = 'c1';
    $c2 = 'c2';
    $c3 = 'c3';
  end
end

class Player1
  attr_accessor :score


  def initialize()
    @score = 0
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
  attr_accessor :score

  def initialize()
    @score = 0
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
  #attr_accessor :board
  def initialize()
    @@run = true
    puts "New Game of Tic Tac Toe"
    @board = Board.new
    puts "Here are the board positions"
    @board.board_state
    @p1 = Player1.new()
    @p2 = Player2.new()

    
    for i in 1..5 do  
      p "num loop = #{i}" 
      self.play_round
      if i == 5
        puts "noooooo"
        if @p1.score > @p2.score
          puts "PLayer 1 Won the match"
        end
        if @p1.score < @p2.score
          puts "PLayer 2 Won the match"
        end
        break       # this will cause execution to exit the loop
      end
      @@run = true
      @board.reset_board
      puts "New Round"
      @board.board_state


    end

  end
  def play_round
    while(@@run)
    puts "Player 1. Enter positon for X"
    puts "Eg. For first row & first column enter a1"
    choice_1 = gets.chomp
    @p1.player_choice(choice_1)
    self.check_who_won
    self.board_positions
    if @@run == false
      break
    end 

    puts "Player 2. Enter positon for 0"
    puts "Eg. For first row & first column enter a1"
    choice_2 = gets.chomp
    @p2.player_choice(choice_2)
    self.check_who_won
    self.board_positions
    end
  end
 
   def board_positions
     @board.board_state
   end
  def check_who_won
    if $a1 == "X" && $a2 == "X" && $a3 == "X"
      p "Player 1 won this round"
      @p1.score =  @p1.score + 1;
      p @p1.score 
      @@run = false
    end
    if $b1 == "X" && $b2 == "X" && $b3 == "X"
      p "Player 1 won this round"
      @p1.score =  @p1.score + 1;
      @@run = false
    end
    if $c1 == "X" && $c2 == "X" && $c3 == "X"
      p "Player 1 won this round"
      @p1.score =  @p1.score + 1;
      @@run = false
    end
    if $a1 == "X" && $b1 == "X" && $c1 == "X"
      p "Player 1 won this round"
      @p1.score =  @p1.score + 1;
      @@run = false
    end
    if $a2 == "X" && $b2 == "X" && $c2 == "X"
      p "Player 1 won  this round"
      @p1.score =  @p1.score + 1;
      @@run = false
    end
    if $a3 == "X" && $b3 == "X" && $c3 == "X"
      p "Player 1 won this round"
      @p1.score =  @p1.score + 1;
      @@run = false
    end
    if $a1 == "X" && $b2 == "X" && $c3 == "X"
      p "Player 1 won this round"
      @p1.score =  @p1.score + 1;
      @@run = false
    end
    if $a3 == "X" && $b2 == "X" && $c1 == "X"
      p "Player 1 won this round"
      @p1.score =  @p1.score + 1;
      @@run = false
    end

    if $a1 == "O" && $a2 == "O" && $a3 == "O"
      p "Player 2 won this round"
      @p2.score =  @p2.score + 1;
      @@run = false
    end
    if $b1 == "O" && $b2 == "O" && $b3 == "O"
      p "Player 2 won this round"
      @p2.score =  @p2.score + 1;
      @@run = false
    end
    if $c1 == "O" && $c2 == "O" && $c3 == "O"
      p "Player 2 won this round"
      @p2.score =  @p2.score + 1;
      @@run = false
    end
    if $a1 == "O" && $b1 == "O" && $c1 == "O"
      p "Player 2 won this round"
      @p2.score =  @p2.score + 1;
      @@run = false
    end
    if $a2 == "O" && $b2 == "O" && $c2 == "O"
      p "Player 2 won this round"
      @p2.score =  @p2.score + 1;
      @@run = false
    end
    if $a3 == "O" && $b3 == "O" && $c3 == "O"
      p "Player 2 won this round"
      @p2.score =  @p2.score + 1;
      @@run = false
    end
    if $a1 == "O" && $b2 == "O" && $c3 == "O"
      p "Player 2 won this round"
      @p2.score =  @p2.score + 1;
      @@run = false
    end
    if $a3 == "O" && $b2 == "O" && $c1 == "O"
      p "Player 2 won this round"
      @p2.score =  @p2.score + 1;
      @@run = false
    end
  end 
end


new_game = Game.new
