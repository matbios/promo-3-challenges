def bank_score
  rand(16..21)
  # TODO: Use Random to get a new random score
end

def pick_card
  rand(1..11)
  # TODO: Use Random to get a new random card
end

def game_outcome(bank, score)
  array_game = Array.new
  array_game << bank
  array_game << score
  return array_game
  # TODO: Take the bank and the score and output an array containing the bank and then the score
end

#puts game_outcome(bank_score, pick_card)