require_relative 'black_jack'

def play_game
  score = 0
  bank = bank_score
  while asking_for_card?(score)
    score += pick_card
    puts state_of_the_game(score, bank)
  end
  outcome = game_outcome(bank,score)
  puts build_message_for(outcome)
end

def state_of_the_game(score, bank)
  # TODO: Returns custom message with player's score and bank's score
  "Your score is #{score}, bank is #{bank}!"
end

def asking_for_card?(score)
  return false if score > 21
  # TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice
  puts "Card ? (type 'Y' or 'yes' for a new card)"
  print "> "
  reponse = gets.chomp
  if reponse == "Y" || reponse == "yes"
    true
  else
    false
  end
end


def build_message_for(outcome)
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
  bank = outcome[0]
  score = outcome[1]
  if score > 21
    "You are over 21... you loose."
  elsif score == 21
    "Black Jack!"
  elsif score > bank
    "You beat the bank! You win."
  else
    "Bank beats you! You loose."
  end
end

