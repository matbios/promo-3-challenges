require 'open-uri'
require 'json'

def generate_grid(grid_size)
  #TODO: generate random grid of letters
  letters = ("A".."Z").to_a
  letters_rand = []

  for n in 1..grid_size
    letters_rand << letters.sample(1)
  end

  return letters_rand
end

def run_game(attempt, grid, start_time, end_time)
  #TODO: runs the game and return detailed hash of result

  time = end_time - start_time

  result = {}

  if check(attempt, grid)
    if translation(attempt).nil?
      result[:translation] = nil
      result[:score] = 0
      result[:time] = time
      result[:message] = "not an english word"
    else
      result[:translation] = translation(attempt)
      result[:score] = score(attempt, time)
      result[:time] = time
      result[:message] = "well done"
    end
  else
    result[:translation] = translation(attempt)
    result[:score] = 0
    result[:time] = time
    result[:message] = "not in the grid"
  end

  return result
end



def check(attempt, grid)
  word_split = attempt.upcase
  word_split = word_split.split('')
  word_split.all? do |x|
    grid.include?(x)
  end
end


def translation(attempt)

  api_url = "http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}"

  api_return = Hash.new
  open(api_url) do |stream|
    api_return = JSON.parse(stream.read)
  end

  if api_return.has_key? "Error"
    return nil
  else
    return api_return["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"]
  end

end


def score(attempt, time)

  scoring = attempt.size + (1.to_f / time)
  return scoring

end