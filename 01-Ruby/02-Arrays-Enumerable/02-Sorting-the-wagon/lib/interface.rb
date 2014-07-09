require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  students << name if name != ""
  # TODO: Add the name we just gotto the students array

end while name != ""

count = students.size
list = wagon_sort(students)

puts "Congratulations! Your Wagon has #{count} students:"
#puts list

puts wagon_displayname(list, count)



# voilà :
#puts "Congratulations! Your Wagon has #{count} students:"
#print wagon_sort(students)
#sleep(1)
#wagon_sorted = wagon_sort(students)
#puts wagon_wrongdisplay(wagon_sorted)

# TODO: Call `wagon_sort` method and display the sorted student list