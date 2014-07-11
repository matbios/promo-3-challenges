def array_to_hash(array)
  hash = Hash.new
    array.each_with_index do |element, index|
      if block_given?
      hash[yield(index)] = element
      else
      hash[index] = element
      end
    end
  return hash
end

puts array_to_hash([ "TITI", "TOTO" ])


  #TODO: implement the method :)
# transformer un array en hash
# array_to_hash(["blabla", "nunu"])


# array_to_hash([ "TITI", "TOTO" ])
# { 0 => "TITI", 1 => "TOTO" }


# array_to_hash([ "TITI", "TOTO" ]) do |index|
#   "La cle #{index}"
# end
# => { "La cle 0" => "TITI", "La cle 1" => "TOTO" }