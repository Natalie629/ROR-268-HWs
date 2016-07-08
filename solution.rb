# 剪刀石頭布

def ask_user
	begin 
	puts "Please choose one of the following: R ✊ / P ✋ / S ✌️ "
	user_input = gets.chomp.upcase
	end while !["R", "P", "S"].include?(user_input)

  user_input
end

def ask_computer
  ["R","P","S"].shuffle!.last
end

def check_game(user_input, computer_input)


	if user_input == "R"
		if computer_input == "R"
			"It's Draw"
		elsif computer_input == "S"
			"You Lose"
		elsif computer_input == "P"
			"You Win"
		end
	elsif user_input == "S"
		if computer_input == "R"
			"You Win"
		elsif computer_input == "S"
			"It's Draw"
		elsif computer_input == "P"
			"You Lose"
		end
	elsif user_input == "P"
		if computer_input == "R"
			"You Lose"
		elsif computer_input == "S"
			"You Win"
		elsif computer_input == "P"
			"It's Draw"
		end
	end
end

def get_input(input)
  gestures = {
    "R" => "Rock",
    "P" => "Paper",
    "S" => "Scissors"
  }

  gestures[input]
end

def print_result(user_input, computer_input, message)

  puts "==================================="
  puts "You choose #{get_input(user_input)}, computer chooses #{get_input(computer_input)}."
  puts "#{message}!"
  puts "==================================="
end

def play_again
  begin
    puts "Do You Want To Play Again?: Y / N"
    continue = gets.chomp.upcase
  end while !["Y", "N"].include?(continue)

  continue
end

#####
begin
	puts "<<<<<  Welcome to Rock Paper Scissors!!!  >>>>>"

  user_input = ask_user()
	computer_input = ask_computer()

  message = check_game(user_input, computer_input)
  print_result(user_input, computer_input, message)
  continue = play_again

end while continue == "Y"
puts "<<<<<  Thanks for playing Rock Paper Scissors!!!  >>>>>"
