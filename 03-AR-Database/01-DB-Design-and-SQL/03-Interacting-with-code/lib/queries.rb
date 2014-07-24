require 'sqlite3'

# opens the database
database_path = File.join(File.dirname(__FILE__), 'db/jukebox.sqlite')
db = SQLite3::Database.new(database_path)

def number_of_rows(db, table_name)
  db.execute("SELECT COUNT(*) FROM #{table_name}")
  #TODO: count number of rows in table table_name
end

#p number_of_rows(db, "Album")

def sorted_artists(db)
db.execute("SELECT Name FROM Artist ORDER BY Name ASC;")
  #TODO: return array of artists' names sorted alphabetically
end

# p sorted_artists(db)

def love_tracks(db)
  db.execute("SELECT name FROM track WHERE name LIKE '%love%'")
  #TODO: return array of love songs
end

# p love_tracks(db)

def long_tracks(db, min_length)
  min_length_in_milliseconds = min_length * 60000
  db.execute("SELECT name FROM track WHERE Milliseconds > #{min_length_in_milliseconds}")
  #TODO: return tracks verifying: duration > min_length (minutes)
end

# p long_tracks(db, 44)