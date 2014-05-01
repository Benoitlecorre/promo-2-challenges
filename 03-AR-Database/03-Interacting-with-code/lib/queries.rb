require 'sqlite3'

# opens the database
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)


def number_of_rows(db, table_name)
  #TODO: count number of rows in table table_name
  db.execute "SELECT COUNT(*) FROM #{table_name}"
end

def sorted_artists(db)
  #TODO: return array of artists' names sorted alphabetically
<<<<<<< HEAD
  db.execute "SELECT name FROM Artist;"
=======
>>>>>>> 4f7fdeb82fac1609b4cf04f0eb1bbfc130a95974
end

def love_tracks(db)
  #TODO: return array of love songs
  db.execute "SELECT Name FROM Track WHERE Name LIKE '%love%' ;"
end

def long_tracks(db, min_length)
  #TODO: return tracks verifying: duration > min_length (minutes)
<<<<<<< HEAD
  (db.execute "SELECT Milliseconds fROM Track WHERE Milliseconds > #{min_length * 6000}").flatten
=======
>>>>>>> 4f7fdeb82fac1609b4cf04f0eb1bbfc130a95974
end
