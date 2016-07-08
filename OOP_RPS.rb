class Player
  attr_accessor :select

  def initialize(select)
    @select = select
  end
end

class Human < Player 
  def get_human_input
    begin
      puts "Please choose one of the following: R ✊ / P ✋ / S ✌️ "
      self.select = gets.chomp.upcase
    end while !["R", "P", "S"].include?(select)
  end
end

class Computer < Player
  def get_computer_input
    self.select = ['R', 'P', 'S'].sample
  end
end



class RPS

  attr_accessor :human, :computer

  def initialize
    @human = Human.new("you")
    @computer = Computer.new("computer")
  end

  def check_game
    if human.select == computer.select then "It's a draw"

      elsif human.select == "R" 
        if computer.select == "P" then "You lost"
        elsif computer.select == "S" then "You win"
        end

      elsif human.select == "P" 
        if computer.select == "S" then "You lost"
        elsif computer.select == "R" then "You win"
        end

      elsif human.select == "S" 
        if computer.select == "R" then "You lost"
        elsif computer.select == "P" then "You win"
        end
      end
  end

  def print_result

  puts "==================================="
  puts "You choose #{human.select}, computer chooses #{computer.select}."
  puts "#{check_game}!"
  puts "==================================="

  end

  def play_again
    begin
    puts "Do You Want To Play Again?: Y / N"
    continue = gets.chomp.upcase
    end while !["Y", "N"].include?(continue)
    
    if continue == 'Y'
      game = RPS.new.start
    elsif 
      puts "<<<<<  Thanks for playing Rock Paper Scissors!!!  >>>>>"
    end   
  end

  def start
    puts "<<<<<  Welcome to Rock Paper Scissors!!!  >>>>>"
    human.get_human_input
    computer.get_computer_input
    check_game
    puts "==================================="
    puts "You choose #{human.select}, computer chooses #{computer.select}."
    puts "#{check_game}!"
    puts "==================================="
    play_again

  end
end



game = RPS.new.start