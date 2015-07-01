#1. players have to be able to choose r,p, or s
#2. we need a while loop so we can replay
 
CHOICES = {"r" => "Rock", "p" => "Paper", "s" => "Scissors" }
puts "Welcome to Rock, Paper, Scissors"

def display_winning_msg(winning_choice)
  case winning_choice
  when 'p'
    puts "Paper wraps Rock!"
  when 's'
    puts "Scissors cuts Paper!"
  when 'r'
    puts "Rock smashes Scissors!"
  end
end

loop do 
  begin
    puts "Please choose one: 'r', 'p', 's'"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)

  computer_choice = CHOICES.keys.sample

  if player_choice == computer_choice
    puts "It's a tie!"
  elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == "r" && computer_choice == 
    's') || (player_choice == 's' && computer_choice == 'p')
    display_winning_msg(player_choice)
    puts "You Won!"
  else
    display_winning_msg(computer_choice)
    puts "Sorry, Computer Won :("
  end

  puts "Would you like to play again (y/n)?"
  break if gets.chomp.downcase != 'y'
end
