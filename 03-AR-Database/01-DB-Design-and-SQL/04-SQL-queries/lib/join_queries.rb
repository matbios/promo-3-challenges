require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
db.execute("
  SELECT Track.Name, Album.Title, Artist.Name
  FROM Track
  JOIN Album ON Track.AlbumId = Album.AlbumId
  JOIN Artist ON Artist. ArtistId = Album. ArtistID")
  # TODO: return the list of tracks with their album and artist
end

# p detailed_tracks(db)

def stats_on(db, category)
  number = db.execute("SELECT COUNT(*), AVG(Milliseconds)
  FROM Track
  JOIN Genre ON Genre.GenreId = Track.GenreId
  WHERE Genre.Name LIKE '#{category}'")

  hash = {}
  hash[:category] = category
  hash[:number_of_songs] = number[0][0]
  hash[:avg_length] = number[0][1]
  return hash

  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
end

# p stats_on(db, "Rock")

def top_five_rock_artists(db)

db.execute("SELECT Artist.Name , Count(Track.TrackId) AS nb_track
FROM Artist
JOIN Album ON Artist.ArtistId = Album.albumId
JOIN Track ON Track.AlbumId = Album.AlbumId
JOIN Genre ON Genre.GenreId = Track.GenreId
WHERE Genre.Name like 'rock'
GROUP BY Artist.Name
ORDER BY nb_track DESC LIMIT 0,5")

  #TODO: return list of top 5 rock artists
end

p top_five_rock_artists(db)

# lister les artistes rock
# compter le nombre de chansons rock par artiste
# classer les artistes par nombre de chansons rock
# prendre les 5 meilleurs