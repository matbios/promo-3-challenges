require_relative 'black_jack'


def play_game

  bank_card = bank_score
  score = 0

  while asking_for_card?(score) == true
    score += pick_card
    state_of_the_game(score, bank_card)
  end

  outcome = game_outcome(bank_card, score)
puts build_message_for(outcome)

end
#TODO: make the user play from terminal in a while loop that will stop when the user will not be asking for  a new card

def state_of_the_game(score, bank)
  return "Your score is #{score}, bank is #{bank}!"
  # TODO: Returns custom message with player's score and bank's score
end

def asking_for_card?(score)
  if score <= 21
    puts "Card ? (type 'Y' or 'yes' for a new card)"
    answer = gets.chomp
    if "yes" == answer || "Y" == answer
      return true
    else
      return false
    end
  else
    false
  end
end
# TODO: Ask for a card only if the score is less or equal to 21, then returns true or false according to the user's choice

def build_message_for(outcome)
  if outcome[1] > 21
    return "You are over 21... you loose."
  elsif outcome[1] == 21
    return "Black Jack!"
  elsif outcome[1] > outcome[0]
    return "You beat the bank! You win."
  elsif outcome[1] < outcome[0]
    return "Bank beats you! You loose."
  end
  #TODO: return specific message depending on the game outcome (= bank's score and user's score)
end
