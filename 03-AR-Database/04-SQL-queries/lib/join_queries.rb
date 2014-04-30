require 'sqlite3'

# opens the database
DATABASE_PATH = "db/jukebox.sqlite"
db = SQLite3::Database.new(DATABASE_PATH)

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  db.execute "
  SELECT Track.Name, Album.Title, Artist.Name
  FROM Track
  INNER JOIN Artist, Album
  ON Track.AlbumId = Album.AlbumId
  AND Album.ArtistId = Artist.ArtistId;
  "
  #retourne list ede musique avec leur album et l'artiste
end

def stats_on(db, category)
  #TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
  # pour la catégorie donnée, retourner le nombre de musique et la moyenne de longeur des chansons
  db.execute("
  SELECT Genre.Name, COUNT(Track.TrackId), AVG(Track.Milliseconds)
  FROM Track
  INNER JOIN Genre
  ON Genre.GenreId = Track.GenreId
  WHERE Genre.Name = '#{category}'
  ")
  #GenreId
  #db.execute "SELECT COUNT(*) FROM #{table_name}"
end

def top_five_rock_artists(db)
  #TODO: return list of top 5 rock artists
  #Retourner la liste des cinq top rock artists, ceux qui ont fait le plus de chansons de rock
  #DONC JE VEUX LES 5 CHANTEURS QUI ont FAIT LE PLUS DE CHANSONS DE ROCK
  # DONC JE DOIS CHOPER LES CHANTEURS QUI ONT FAIT DU ROCK ET ENSUITE LES TRIER

=begin
Recuperer les noms des artistes triés qui ont le plus grand nombre de tracks dont le genre est rock
Le nom de l'artiste . A quelle condition ? Qu'il ait des tracks Rock.
Si je veux des noms d'artiste, ce que je vais commencer à écrire c'est :

SELECT Artist.Name FROM Artist

=end



end

puts stats_on(db, "Rock")