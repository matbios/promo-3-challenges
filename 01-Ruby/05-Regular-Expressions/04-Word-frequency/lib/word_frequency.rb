def most_common_words(file_name, stop_words_file_name, number_of_word)

  frequency = Hash.new(0)
  stop_words = []

  File.open(stop_words_file_name).each_line do |word|
    stop_words << word.chomp
  end

  File.open(file_name).each_line do |line|
    words = line.scan(/\b\w+\b/).delete_if { |word| stop_words.include?(word.downcase) }
    words.each { |word| frequency[word.downcase] += 1 }
  end

  return Hash[frequency.sort_by { |key, value| -value }.first(number_of_word)]

end

#puts most_common_words('./source-text.txt', './stop_words.txt', 50)

  #TODO: return hash of occurences of number_of_word most frequent words