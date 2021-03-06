# Encoding: utf-8
require 'csv'

def most_successfull(number, max_year, file_name)
  #TODO: return the number most successfull movies max_year
  array = []

  CSV.foreach(file_name, encoding: "iso-8859-1:UTF-8") do |row|

    info_film = {
    name: row[0].to_s,
    max_year: row[1].to_i,
    earnings: row[2].to_i
  }

  array << info_film

  end
  array.keep_if { |a| a[:max_year] >= max_year }
  array.sort_by {|info_film| info_film[:earnings]}
  array.take(number)

end

most_successfull(2, 2010, "movies.csv")