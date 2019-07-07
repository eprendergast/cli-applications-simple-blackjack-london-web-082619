def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  puts "Your cards add up to #{sum}"
  return sum
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    new_card = deal_card
    card_total += new_card
  elsif user_input == "s"
    card_total
  else
    invalid_command
  end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # Welcome the user
  welcome
# Deal them their first two cards, i.e. their initial_round
  card_total = initial_round
# Ask them if they want to hit or stay
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
end_game(card_total)
# If they want to stay, ask them again!
# If they want to hit, deal another card and display the new total
# If their card total exceeds 21, the game ends.
end
