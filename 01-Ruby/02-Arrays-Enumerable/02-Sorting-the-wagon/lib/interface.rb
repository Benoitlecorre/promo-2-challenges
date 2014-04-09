require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name
  students << name if name != ""
  # TODO: Add the name we just got to the students array

end while name != ""

v = wagon_sort(students)
print "Congratulations! Your Wagon has #{students.length} students: -"
v.to_s
puts v*","

