def shuffle_word(a_word)
  a_word.upcase.chars.shuffle
end

# à savoir que la fonctin chars va créer direct un array.

  #TODO: refactor this method
  #cap_word = a_word.upcase
  #chars_enum = cap_word.chars
  #array = chars_enum.to_a
  #shuffle_array = array.shuffle

  #shuffle_array


def quote_prime_numbers(n)
  prime_numbers = (1..n).find_all do |i|
    prime_test = (2..i-1).select {|k| i % k == 0 }
    prime_test.count == 0
  end
  prime_numbers.map{ |prime_num| "#{prime_num} is prime"}
end

# (1..n).find_all {|i| (2..i-1).select {|k| i % k == 0 }.count == 0 }.map{ |prime_num| "#{prime_num} is prime"}
#TODO: refactor this method
# avec "p" il retourne toutes les valeurs qu'il trouve, s'il n'y est pas il retourne la dernière

# require 'prime'
# def quote_prime_numbers(n)
#   Prime.each(n) do |prime|
#     print "#{prime} is prime"
#   end
# end
