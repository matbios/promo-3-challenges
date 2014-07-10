# Encoding: utf-8

def louchebemize(sentence)

  suffix = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
  vowels = ["a", "e", "i", "o", "u"]
  consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]

  #sentence_split = sentence.split(' ')

 louchebemized = sentence.split.map do |word|
    if word.length == 1
      word
    elsif vowels.include?(word[0].downcase)
      "l#{word}#{suffix.sample}"
    elsif consonants.include?(word[0].downcase)
      "l#{word[1,word.length-1]}#{suffix.sample}#{word[1,1]}"
    else
      "#{word}#{suffix.sample}"
    end
  end

  louchebemized.join(' ')

end

puts louchebemize('ma phrase a plusieurs mots dont Argentine')

# puts "#{sentence}"
# suffix = ["em", "é", "ji", "oc", "ic", "uche", "ès"]
#   suffix do |i|
#   sentence.map { |e| e + i.rand }
# end


#TODO: implement your louchebem translator

# si lenght == 1 ne pas traduire
# rajouter à la

# you should pick your final random suffix in ["em", "é", "ji", "oc", "ic", "uche", "ès"]
# one-letter word like "a" or "l" should not be translated
# word beginning with a vowel should be translated differently. Ex: "atout" may give "latoutoc"
# reporter à la fin du mot le groupe de consonnes et remplacer par un "l"
