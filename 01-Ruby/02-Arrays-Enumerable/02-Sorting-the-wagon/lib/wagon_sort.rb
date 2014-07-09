def wagon_sort(students)
  return students.sort_by{|word| word.downcase}
  # TODO: return a copy of students, sorted alphabetically
end

def wagon_displayname(students, count)

partie1 = students[0..count-2].join(", ")
partie2 = students.last
latotale = "#{partie1} and #{partie2}"
return latotale

end

# afficher tous les éléments du tableau sur une même ligne
# afficher des virgules entre les éléments du tableau sur la même ligne
# afficher un "end" avant le dernier élément à la place de la virgule.