def wagon_sort(students)
  # TODO: return a copy of students, sorted alphabetically
  return students.sort_by{|name| name.downcase}
end
