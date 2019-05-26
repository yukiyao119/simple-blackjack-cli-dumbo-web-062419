def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card = rand(1..11)
  return card
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  #"h", "s", "exit"
  answer = gets.chomp
  return answer
end

def end_game(num1)
  # code #end_game here
  puts "Sorry, you hit #{num1}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  # code hit? here
  prompt_user
  answer1 = get_user_input
  if answer1 == "h"
    card3 = deal_card
    return card_total += card3
  elsif answer1 == "s"
    return card_total
  else 
    invalid_command
    prompt_user
    return card_total
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum1 = initial_round
  until sum1 > 21 
    current_card_total = hit?(sum1)
    display_card_total(current_card_total)
  end
  end_game(current_card_total)
end
    
# describe "#runner" do

#   before(:each) do
#     def get_user_input
#       "h"
#     end 
#   end

#   it "calls on the #welcome method, 
#   then on the #initial_round method, 
#   then calls #hit? and #display_card_total methods
#   -until- the card sum is greater than 21,
#   then calls on the #end_game method" do

#     expect(self).to receive(:deal_card).at_least(3).times.and_return(10)
#     expect(self).to receive(:get_user_input).and_return("h")

#     expect($stdout).to receive(:puts).with("Welcome to the Blackjack Table")
#     expect($stdout).to receive(:puts).with("Your cards add up to 20")
#     expect($stdout).to receive(:puts).with("Type 'h' to hit or 's' to stay")
#     expect($stdout).to receive(:puts).with("Your cards add up to 30")
#     expect($stdout).to receive(:puts).with("Sorry, you hit 30. Thanks for playing!")
#     runner
#   end
# end
