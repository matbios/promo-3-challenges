def sum_with_while(min,max)
sum = 0
n = min
  while n <= max
    sum += n
    n += 1
  end
sum
end
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a while..end structure


def sum_with_for(min,max)
  sum = 0
    for i in min..max
      sum += i
    end
  sum
end
  #TODO: return the sum of the integers between min and max
  #CONSTRAINT: you should use a for..end structure

# je prends le premier élément, et je regarde s'il y en a un 2eme
# si c'est le cas je l'additionne au premier
# s'il n'existe pas de 3eme élément, je m'arrête là, sinon j'additionne l'élément suivant

def sum_recursive(min, max)

  fail(ArgumentError) if min > max
  min == max ? min :  min + sum_recursive(min + 1, max)

end

puts sum_recursive(1, 100)

#TODO (optional): return the sum of the integers between min and max
#CONSTRAINT: you should use a recursive algorithm, i.e. the method should call itself
#def sum_recursive(min,max)