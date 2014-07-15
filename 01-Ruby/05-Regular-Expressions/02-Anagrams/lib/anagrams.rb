def anagrams?(a_string, another_string)
  if a_string.downcase.scan(/\w/).sort == another_string.downcase.scan(/\w/).sort
    true
  else
    false
  end
end
#TODO: implement the obvious method to test if two words are anagrams
# anagrams_on_steroids?(string, string)


def anagrams_on_steroids?(a_string, another_string)

  a_string_tab = a_string.downcase.chars
  another_string_tab = another_string.downcase.chars

  a_string_hash = {}

  a_string_tab.each do |c|
    if c =~ /\w/
      if a_string_hash[c]
        a_string_hash[c] += 1
      else
        a_string_hash[c] = 1
      end
    end
  end

  another_string_hash = {}

  another_string_tab.each do |c|
    if c =~ /\w/
      if another_string_hash[c]
        another_string_hash[c] += 1
      else
        another_string_hash[c] = 1
      end
    end
  end

  if a_string_hash == another_string_hash
    true
  else
    false
  end

end

# anagrams_on_steroids?("Monica Lewinsky!", "Nice silky woman")

#TODO: implement the improved method

# trouver le nombre d'occurences d'une lettre dans le mot.
# prendre chaque lettre, et retourner le nombre d'occurence de la lettre.
# sortir toutes les lettres présentes dans les mots, puis compter le nombre d'occurence
