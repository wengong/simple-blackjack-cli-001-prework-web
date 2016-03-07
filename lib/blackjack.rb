def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  return rand(1..11)# code #deal_card here
end

def display_card_total(card_total)
  puts  "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  puts"Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  abc=deal_card+deal_card

  display_card_total(abc)
  return abc
  # code #initial_round here
end

def hit?(abc)
  prompt_user
  act=get_user_input
  loop do
    if act=="s"
      #puts"stay"
      break
    elsif act=="h"
      abc+=deal_card
      #display_card_total(abc)
      break
    else
      invalid_command
    end
  end

  return abc
end

def invalid_command
  puts "Please enter a valid command"
  puts prompt_user
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  inhand=initial_round
  inhand=hit?(inhand)
  while inhand < 21 do
    inhand += hit?(deal_card)
  end
  display_card_total(inhand)
  end_game(inhand)

  # code runner here
end

